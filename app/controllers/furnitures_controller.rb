class FurnituresController < ApplicationController

  def index
    @furniture_types = FurnitureType.all
    @most_popular = FurniturePiece.most_popular
  end

  def show
    @furniture = Furniture.find(params[:id])
  end

  def new
    @furniture = Furniture.new
    @furniture.build_furniture_type
  end

  def create
    @furniture = Furniture.new(furniture_params)
    binding.pry

    if @furniture.save
      redirect_to furniture_path(@furniture)
    else
      render :new
    end
    
  end

  private
  def furniture_params
    params.require(:furniture).permit(
      :user_id, 
      :description, 
      :price, 
      :quantity, 
      :width, 
      :depth, 
      :height, 
      furniture_type_attributes:
      [
        :description
        ])
  end

end