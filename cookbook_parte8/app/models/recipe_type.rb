# frozen_string_literal: true

class RecipeType < ApplicationRecord
  has_many :recipes

  validates :name, presence: true
end
