# A class that manipulates arrays in funny ways.
class ArrayUtils
  def self.compara(list1, list2)
    list1.sort == list2.sort
  end

  def self.divisiveis(divisor1, divisor2)
    list = (1..50).to_a
    div1 = list.select { |i| (i % divisor1).zero? && (i % divisor2).zero? }
    list -= div1
    div2 = list.select { |i| (i % divisor1).zero? }
    list -= div2
    div3 = list.select { |i| (i % divisor2).zero? }

    [div1, div2, div3]
  end

  def self.soma(list)
    list.inject(0, :+)
  end

  def self.combinar(list1, list2)
    size = list2.length
    list1.map { |i| [i] * size }.flatten.zip([list2 * size].flatten)
  end
end
