require "slack-notify"
require 'clockwork'
# ここに、slackにメッセージを送る処理を書き込む。
require './config/boot'
require './config/environment'
require 'active_support/time'
module Clockwork
  binding.irb
  # ここに、「どれくらいの周期で処理をするのか？」というClockworkのメソッドを記述します
  # ここに、slackで一定時間ごとに送りたい処理と設定を書き込みます
  handler do |job|
  client = SlackNotify::Client.new(webhook_url: ENV['SLACK_WEBHOOK_URL'])
  client.notify("Hello!")
end
  every(3.minutes, 'less.frequent.job')
end
