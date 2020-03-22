class AddFeaturedToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :featured, :boolean, default: false
  end
end
