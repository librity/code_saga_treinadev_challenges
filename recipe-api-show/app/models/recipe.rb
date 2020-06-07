class Recipe < ApplicationRecord
  belongs_to :recipe_type

  def as_json(options = {})
    super(include: [:recipe_type])
  end
end
