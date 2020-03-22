class Recipe < ApplicationRecord
  def cook_time_min
    "#{cook_time} minutos"
  end
end
