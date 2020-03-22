# frozen_string_literal: true

class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:info] = 'Receita enviada com sucesso.'
      render 'show'
    else
      render 'new'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title, :recipe_type, :cuisine,
                                   :difficulty, :cook_time, :ingredients,
                                   :cook_method)
  end
end
