# frozen_string_literal: true

class RecipeType < ApplicationRecord
  has_many :recipes, dependent: :destroy
end
