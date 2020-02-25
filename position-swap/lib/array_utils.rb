# frozen_string_literal: true

class ArrayUtils
  def troca(arr)
    arr.each_slice(2).map(&:reverse).flatten
  end
end
