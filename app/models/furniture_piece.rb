class FurniturePiece < ActiveRecord::Base
  belongs_to :room
  has_one :user, :through => :room
  belongs_to :furniture
end
