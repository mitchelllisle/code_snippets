# https://github.com/hrbrmstr/slackr
# https://cran.r-project.org/web/packages/slackr/slackr.pdf

# SlackR setup needs to be done first specifying this information. NOTE: You need to setup an API token first.
# slackr_setup(channel = "#general", username = "slackr", icon_emoji = "",
# incoming_webhook_url = "", api_token = "", config_file = "~/.slackr",
# echo = FALSE)

# Call environment variables needed
  slackr_setup()
# Send message using Slack Bot. Bot needs to be setup first. 
  slackr_bot("This is a test message")
