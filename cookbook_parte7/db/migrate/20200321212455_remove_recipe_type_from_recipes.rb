class RemoveRecipeTypeFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :recipe_type
  end
end
