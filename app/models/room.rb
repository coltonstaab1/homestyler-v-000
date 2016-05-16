class Room < ActiveRecord::Base
  belongs_to :user
  has_many :furniture_pieces, through: :user
end
