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

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find_by(id: params[:id])

    return render json: 'Receita não pode ser apagada.' unless @recipe

    @recipe.destroy
    render json: 'Receita apagada com sucesso.', status: 200
  end

  private

  def recipe_params
    params.require(:recipe).permit(:title,
                                   :description,
                                   :recipe_type_id)
  end
end
