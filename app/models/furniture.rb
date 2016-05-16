class Furniture < ActiveRecord::Base
  has_many :furniture_pieces
end
