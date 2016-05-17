class FurnituresController < ApplicationController

  def index
    @furniture_types = FurnitureType.all
    @most_popular = Furniture.find(FurniturePiece.most_popular).description
  end

  def show
    @furniture = Furniture.find(params[:id])
  end

  def new
    @furniture = Furniture.new
  end

  def create
    @furniture = Furniture.create(furniture_params)
    redirect_to furniture_path(@furniture)
  end

  private
  def furniture_params
    params.require(:furniture).permit(:user_id, :description, :price, :quantity, :width, :depth, :height, :furniture_type_id)
  end

end