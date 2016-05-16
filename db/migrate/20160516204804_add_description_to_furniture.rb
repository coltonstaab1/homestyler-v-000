class AddDescriptionToFurniture < ActiveRecord::Migration
  def change
    add_column :furnitures, :description, :string
  end
end
