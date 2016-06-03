module Api::V1
  class TwitterController < ApplicationController

    def home_timeline

      client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV['twitter_key']
        config.consumer_secret     = ENV['twitter_secret']
        config.access_token        = ENV['twitter_access_token']
        config.access_token_secret = ENV['twitter_access_token_secret']
      end
      # # debugger
      # user = authenticate

      tweets = ""
      client.home_timeline.take(5).collect do |tweet|
        tweets += "#{tweet.user.screen_name}: #{tweet.text} \n\n"
      end

      render json: tweets, status: 200
      #Receive the respond, Return to client
      # render json: client.home_timeline
      # render html: client.home_timeline
      # render xml: client.home_timeline
    end

  end
end

