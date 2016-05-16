class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = User.find(params[:id])
  end

  def index
    @designers = User.where(designer: 'true').order('name asc')
    @users = User.where(designer: 'false').order('name asc')
  end

end