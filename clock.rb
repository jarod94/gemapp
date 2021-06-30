require "slack-notify"
require 'dotenv/load'
require 'clockwork'

include Clockwork

require 'active_support/time'
module Clockwork
  handler do |job|
      puts "Running #{job}"
      clock = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
      clock.notify("hello, this message is sending each 3 minute")
  end

  every(3.minute, 'less.frequent.job')
end
