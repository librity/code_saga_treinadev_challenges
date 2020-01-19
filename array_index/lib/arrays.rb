# frozen_string_literal: true

class Arrays
  def self.multiplica_indices(array)
    array.each_with_index { |v, i| array[i] = v * i }
  end
end
