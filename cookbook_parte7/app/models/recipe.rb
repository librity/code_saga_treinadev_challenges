# frozen_string_literal: true

class Recipe < ApplicationRecord
  belongs_to :recipe_type

  validates :title, :recipe_type, :cuisine, :difficulty, :cook_time,
            :ingredients, :cook_method, presence: true

  def cook_time_min
    "#{cook_time} minutos"
  end
end
