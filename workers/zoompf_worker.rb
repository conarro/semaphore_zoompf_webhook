require 'swagger_client'
require_relative 'slack_worker.rb'

class ZoompfWorker
  include Sidekiq::Worker
  # no retries to avoid creating more snapshots on failure
  sidekiq_options :retry => false

  ZOOMPF_TEST_ID = ENV['ZOOMPF_TEST_ID']

  def perform commit_info
    snapshot        = api_client.v2_snapshots_post(ZOOMPF_TEST_ID, {})
    new_snapshot_id = snapshot.snapshot_id

    # poll for snapshot completion
    tries = 0
    snapshot_in_progress = true
    while snapshot_in_progress
      new_snapshot = api_client.v2_snapshots_get_1(ZOOMPF_TEST_ID, new_snapshot_id)
      puts "Snapshot status: #{new_snapshot.status}"
      tries += 1
      if new_snapshot.status == 'Complete'
        puts "Snapshot complete"
        snapshot_in_progress = false
      elsif tries > 10
        raise "Snapshot took a while, calling it quits"
      elsif ['InQueue', 'ScanRunning'].include?(new_snapshot.status)
        sleep_time = 30
        puts "Sleeping for #{sleep_time} seconds, then polling snapshot status for snapshot #{new_snapshot_id}"
        sleep sleep_time
      else # not complete, in queue, or running
        raise "Snapshot creation failed"
      end
    end

    snapshots        = api_client.v2_snapshots_get(ZOOMPF_TEST_ID, p_order_by: 'ScanAddedUTC', p_per_page: 2).snapshots
    new_snapshot     = snapshots.first
    new_defect_count = new_snapshot.defect_count_total_1pc + new_snapshot.defect_count_total_3pc
    old_snapshot     = snapshots.first
    old_defect_count = old_snapshot.defect_count_total_1pc + old_snapshot.defect_count_total_3pc

    comparison_url   = zoompf_compare_url(old_snapshot.snapshot_id, new_snapshot.snapshot_id)

    defect_count_result, color = if new_defect_count > old_defect_count
      ["Total defect count increased from #{old_defect_count} to #{new_defect_count}", '#C0392B']
    elsif new_defect_count < old_defect_count
      ["Total defect count decreased from #{old_defect_count} to #{new_defect_count}", '#2ECC71']
    else
      []
    end

    SlackWorker.perform_async(commit_info, defect_count_result, color, comparison_url) if defect_count_result && color
  end

  private

  def zoompf_compare_url old_snapshot, new_snapshot
    "https://my.zoompf.com/c/#{old_snapshot}/#{new_snapshot}"
  end

  def api_client
    @api_client ||= SwaggerClient::SnapshotsApi.new
  end

end
