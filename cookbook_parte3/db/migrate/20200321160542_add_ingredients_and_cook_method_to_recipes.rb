class AddIngredientsAndCookMethodToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :ingredients, :string
    add_column :recipes, :cook_method, :string
  end
end
