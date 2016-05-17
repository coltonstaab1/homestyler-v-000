class FurniturePiece < ActiveRecord::Base
  belongs_to :room
  has_one :user, :through => :room
  belongs_to :furniture
  validates_presence_of :room_id, :furniture_id

  def self.most_popular
    self.group('furniture_id').order('count_furniture_id desc').count('furniture_id').first[0]
  end
end
