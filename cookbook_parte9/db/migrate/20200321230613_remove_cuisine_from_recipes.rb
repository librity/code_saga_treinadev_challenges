class RemoveCuisineFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :cuisine
  end
end
