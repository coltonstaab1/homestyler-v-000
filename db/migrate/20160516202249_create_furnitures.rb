class CreateFurnitures < ActiveRecord::Migration
  def change
    create_table :furnitures do |t|
      t.integer :user_id
      t.float :price
      t.integer :quantity
      t.float :width 
      t.float :depth
      t.float :height
      t.integer :furniture_type_id

      t.timestamps null: false
    end
  end
end
