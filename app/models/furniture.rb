class Furniture < ActiveRecord::Base
  has_many :furniture_pieces
  belongs_to :furniture_type
  validates_presence_of :user_id, :furniture_type_id, :description, :width, :depth, :height
  accepts_nested_attributes_for :furniture_type
  belongs_to :user

  def furniture_type_attributes=(furniture_type)
    @furniture_type = FurnitureType.find_or_create_by(description: furniture_type["description"])
    @furniture_type.update(furniture_type)
    self.furniture_type = @furniture_type
  end
end
