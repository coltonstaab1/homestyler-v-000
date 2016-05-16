class CreateFurnitureTypes < ActiveRecord::Migration
  def change
    create_table :furniture_types do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
