# frozen_string_literal: true

class RecipesController < ActionController::API
  def index
    recipes = Recipe.all

    render json: recipes, include: :recipe_type, status: :ok
  end
end
