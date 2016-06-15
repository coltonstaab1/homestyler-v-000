class FurniturePiece < ActiveRecord::Base
  belongs_to :room
  has_one :user, :through => :room
  belongs_to :furniture
  validates_presence_of :room_id, :furniture_id

  def self.most_popular
    list_of_lists_including_ids = FurniturePiece.group('furniture_id').order('count_furniture_id desc').count('furniture_id').first(3)
    list_of_popular_ids = list_of_lists_including_ids.map{|list| list[0] }
    most_popular_furnitures_pieces = Furniture.find(list_of_popular_ids)
  end
end
