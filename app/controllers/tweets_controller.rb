class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
  end

  def create
    Tweet.create(tweet_params)
    @tweets = Tweet.all
  end

  private
end