class FurnituresController < ApplicationController

  def index
    @most_popular = FurniturePiece.most_popular
    if params.has_key?("user_id")
      @user = User.find_by(id: params[:user_id])
      @furnitures = @user.furnitures
    else
      @furnitures = Furniture.all
      
    end

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