class Furniture < ActiveRecord::Base
  has_many :furniture_pieces
  belongs_to :furniture_type
end
