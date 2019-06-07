class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all.limit(12)
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    @tweet.save
    redirect_to root_path, notice: 'メッセージが送信されました'
  end

  private

  def tweet_params
    params.require(:tweet).permit(:title, :country, :image, :detail)
  end
end

