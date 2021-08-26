class UsersController < ApplicationController
  def new
  end

  def create
  end

  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
  end

  def edit
    @users = User.find(params[:id])
  end

  def update
    @users = User.find(params[:id])
    @users.update(users_params)
    redirect_to user_path(@users)
  end

  def about
  end

  private

  def users_params
    params.require(:user).permit(:name, :image, :introduction)
  end
end
