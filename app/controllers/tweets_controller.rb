class TweetsController < ApplicationController

  def index
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new

  end

  def show
    @tweet = Tweet.find(params[:id])
    @user = User.find(@tweet.user_id)
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      respond_to do |format|
        format.html { redirect_to tasks_url }
        format.js
      end
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:tweet, :user_id)
  end
end
