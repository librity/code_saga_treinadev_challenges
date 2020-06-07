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
end
