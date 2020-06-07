# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :recipe_type

  validates :title, :description, :recipe_type, presence: true

  def as_json(_options = {})
    super(include: [:recipe_type])
  end
end
