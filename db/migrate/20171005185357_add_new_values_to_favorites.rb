class AddNewValuesToFavorites < ActiveRecord::Migration[5.1]
  def change
    add_column :favorites, :favorite, :boolean
  end
end
