class Arrays
  def self.multiplica_antecessor_predecessor(array)
    array.map.with_index do |v, i|
      next v * array[i + 1] if i.zero?
      next v * array[i - 1] if i == (array.length - 1)
      array[i + 1] * array[i - 1]
    end
  end
end
