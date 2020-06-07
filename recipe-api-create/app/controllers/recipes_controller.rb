# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all

    render status: 200, json: @recipes
  end

  def show
    @recipe = Recipe.find(params[:id])

    render status: 200, json: @recipe
  end

  def create
    @recipe = Recipe.new(recipe_params)

    return render status: 201, json: @recipe if @recipe.save

    render status: 400, json: @recipe.errors.full_messages
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :description, :recipe_type_id)
  end
end
