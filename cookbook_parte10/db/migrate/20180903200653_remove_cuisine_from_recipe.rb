class RemoveCuisineFromRecipe < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :cuisine, :string
  end
end
