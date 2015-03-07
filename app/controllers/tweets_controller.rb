class TweetsController < ApplicationController

	def new
		@tweet = Tweet.new
	end

	#action create
	def create
		@tweet = Tweet.new(tweet_params)
		@tweet.save
		render 'new'
	end

	def tweet_params
		params.require(:tweet).permit(:content)
	end

end
