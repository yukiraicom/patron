module TwieetDelete
  def self.TwieetDelete
    require 'twitter'

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = ENV['consumer_key']
      config.consumer_secret = ENV['consumer_secret']
      config.access_token = ENV['access_token']
      config.access_token_secret = ENV['access_token_secret']
    end

    screen_name = '@DevPatron'

    while true do
      statuses = api.GetUserTimeline(screen_name=screen_name)
      for s in statuses do
        print(s.text, s.created_at)
        api.DestroyStatus(s.id)
      end
    end

  end
end
