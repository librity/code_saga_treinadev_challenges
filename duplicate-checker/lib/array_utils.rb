# frozen_string_literal: true

class ArrayUtils
  def checar_duplicatas(array)
    array.uniq.select { |v| array.count(v) > 1 }
  end
end
