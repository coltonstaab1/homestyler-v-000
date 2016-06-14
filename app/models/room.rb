class Room < ActiveRecord::Base
  belongs_to :user
  has_many :furniture_pieces
  validates_presence_of :user_id, :description

end
