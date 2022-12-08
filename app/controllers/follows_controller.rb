class FollowsController < ApplicationController
before_action :authenticate_user!
respond_to :js

  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user)
    redirect_to followers_path

  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.stop_following(@user)
    redirect_to followers_path
  end




  def index

  end

  # def show
  # end

  def new
  end



  def edit
  end

  def update
  end
end
