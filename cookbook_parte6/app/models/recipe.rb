# frozen_string_literal: true

class Recipe < ApplicationRecord
  validates_presence_of :title, :recipe_type, :cuisine, :difficulty, :cook_time,
                        :ingredients, :cook_method,
                        message: 'Você deve informar todos os dados da receita'

  def cook_time_min
    "#{cook_time} minutos"
  end
end
