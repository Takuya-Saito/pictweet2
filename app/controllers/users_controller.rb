class UsersController < ApplicationController
  def show
    # binding.pry
    @nickname = current_user.nickname
    # @nickname = User.find(current_user.id).nickname
    # @nickname = User.find_by(id: current_user.id).nickname
    # @nickname = User.find_by_id(id: current_user.id).nickname
    # @nickname = User.where(id: current_user.id).first.nickname
    @tweets = current_user.tweets.page(params[:page]).per(5).order("created_at DESC")
  end
end