class FurniturePiece < ActiveRecord::Base
  belongs_to :user
  belongs_to :room, through: :user
end
