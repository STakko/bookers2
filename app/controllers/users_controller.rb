class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
  end

  def user_books
    @user = User.find(params[id])
  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)
  end
end
