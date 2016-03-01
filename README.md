# JIRA / Intercom Webhook

_A Ruby-based web service to connect JIRA tickets and Intercom conversations_

[![Deploy](https://www.herokucdn.com/deploy/button.svg)](https://heroku.com/deploy?template=https://github.com/Rigor/semaphore_zoompf_webhook/tree/master)

## How it works

1. Deploy this web service (Heroku is an easy platform)
2. Add the web service as a "Deploy" webhook in your Semaphore project ([docs](https://semaphoreci.com/docs/post-deploy-webhooks.html))
3. $$$

Once configured, this webhook will:

1. Trigger a new Zoompf snapshot on deploy of your server via Semaphore
2. Compare the new snapshot to the previous one
3. Post the results in Slack

![Slack screenshot](https://www.evernote.com/shard/s39/sh/5f851c43-3ffc-4928-84da-ef9609633726/372cbbc41d40809d/res/6871fb18-ea86-45d6-a1e1-ae080b28b8d4/skitch.png)

### Configuration

* Set the webhook endpoint to `https://your-app-name.herokuapp.com/`

* Set the following environment variables:

```
# ID of your application in Intercom
INTERCOM_APP_ID

# API key for your Zoompf account
ZOOMPF_API_KEY

# ID of the Zoompf test to trigger snapshots for
ZOOMPF_TEST_ID

# Slack webhook URL to notify when a snapshot is triggered
SLACK_WEBHOOK_URL

# Optional regular expression used to match the deployed server from Semaphore
SEMAPHORE_SERVER_REGEX
```



