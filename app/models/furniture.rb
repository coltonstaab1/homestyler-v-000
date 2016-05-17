class Furniture < ActiveRecord::Base
  has_many :furniture_pieces
  belongs_to :furniture_type
  validates_presence_of :user_id, :furniture_type_id, :description, :width, :depth, :height

end
