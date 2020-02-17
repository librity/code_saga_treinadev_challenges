class ArrayUtils
  def troca(arr)
    arr.each_slice(2).map(&:last).zip(arr.each_slice(2).map(&:first)).flatten
  end
end
