class Recipe < ApplicationRecord
  belongs_to :recipe_type

  validates :title, :description, presence: true

  def as_json(options = {})
    super(include: [:recipe_type])
  end
end
