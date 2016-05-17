class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    binding.pry
    @designers = User.where(designer: true).order('name asc')
    @users = User.where(designer: "false").order('name asc')
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_update_params)
    redirect_to user_path(@user)
  end

  private
  def user_update_params
    params.require(:user).permit(:name, :email, :designer)
  end

end