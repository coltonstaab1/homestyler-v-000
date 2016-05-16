class CreateFurniturePieces < ActiveRecord::Migration
  def change
    create_table :furniture_pieces do |t|
      t.integer :room_id
      t.integer :furniture_id

      t.timestamps null: false
    end
  end
end
