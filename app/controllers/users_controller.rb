class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    @designers = User.where(designer: true).order('name asc')
    @users = User.where(designer: "false").order('name asc')
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_update_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private
  def user_update_params
    params.require(:user).permit(:name, :email, :designer)
  end

end