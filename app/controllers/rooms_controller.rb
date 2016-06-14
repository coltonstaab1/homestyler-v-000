class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = User.find_by(id: params[:user_id])
    if @user
      @rooms = User.find(params[:user_id]).rooms
    else
      @rooms = Room.all
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
    @room.furniture_pieces.build(room_id: @room.id)
  end

  def create
    @room = Room.new(room_params)

    if @room.save
      redirect_to room_path(@room)
    else
      render :new
    end
    
  end

  private
  def room_params
    params.require(:room).permit(
      :user_id,
      :description,
      :width,
      :depth
      )
  end

end