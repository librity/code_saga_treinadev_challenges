# frozen_string_literal: true

class RecipeTypesController < ApplicationController
  def index
    @recipe_type = RecipeType.all
  end

  def show
    @recipe_type = RecipeType.find(params[:id])
  end

  def new
    @recipe_type = RecipeType.new
  end

  def create
    @recipe_type = RecipeType.new(recipe_params)
    if @recipe_type.save
      redirect_to @recipe_type
    else
      flash[:alert] = 'Você deve informar o nome do tipo de receita'
      render :new
    end
  end

  private

  def recipe_params
    params.require(:recipe_type).permit(:name)
  end
end
