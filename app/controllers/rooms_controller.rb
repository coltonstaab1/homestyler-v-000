class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
    @room.furniture_pieces.build(room_id: @room.id)
  end

  def create
    binding.pry
    @room = Room.create(room_params)
    redirect_to room_path(@room)
  end

  private
  def room_params
    params.require(:room).permit(
      :user_id,
      :description,
      :width,
      :depth, 
      furniture_pieces_attributes: [
        :room_id, 
        :furniture_id
      ])
  end

end