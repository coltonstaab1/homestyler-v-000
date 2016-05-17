class FurnitureType < ActiveRecord::Base
  has_many :furnitures
  has_many :users, through: :furniture_pieces
  validates_presence_of :description
end
