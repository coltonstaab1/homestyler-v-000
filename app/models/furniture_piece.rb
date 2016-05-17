class FurniturePiece < ActiveRecord::Base
  belongs_to :room
  has_one :user, :through => :room
  belongs_to :furniture
  validates_presence_of :room_id, :furniture_id
end
