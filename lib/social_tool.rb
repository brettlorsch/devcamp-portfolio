module SocialTool
  def self.twitter_search
      client = Twitter::REST::Client.new do |config|
    config.consumer_key        = Env.fetch("TWITTER_CONSUMER_KEY")
    config.consumer_secret     = Env.fetch("TWITTER_CONSUMER_SECRET")
    config.access_token        = Env.fetch("TWITTER_ACCESS_TOKEN")
    config.access_token_secret = Env.fetch("TWITTER_ACCESS_SECRET")
    #put all keys into .env file. 8
  end
  client.search("#rubyonrails", result_type: 'recent').take(6).collect do 
      "#{tweet.user.screen_name}: #{tweet.text}"
    end
  end
end



