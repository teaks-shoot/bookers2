class UsersController < ApplicationController
  def index
    @user = current_user
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books # あるユーザの投稿一覧
  end

  def edit
  end
end
