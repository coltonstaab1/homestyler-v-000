class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :description
      t.float :width
      t.float :depth

      t.timestamps null: false
    end
  end
end
