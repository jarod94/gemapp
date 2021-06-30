require 'slack-notifier'

notifier = Slack::Notifier.new "https://hooks.slack.com/services/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"
notifier.ping "Hello World"
# => if your webhook is setup, will message "Hello World"
# => to the default channel you set in slack
