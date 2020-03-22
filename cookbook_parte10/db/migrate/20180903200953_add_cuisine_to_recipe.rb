class AddCuisineToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_reference :recipes, :cuisine, foreign_key: true
  end
end
