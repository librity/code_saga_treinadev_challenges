# frozen_string_literal: true

# A class that manipulates arrays in funny ways.
class ArrayUtils
  def self.compara(list1, list2)
    list1.sort == list2.sort
  end

  def self.divisiveis(divisor1, divisor2)
    [1.upto(50).select { |n| (n % divisor1).zero? && (n % divisor2).zero? },
     1.upto(50).select { |n| (n % divisor1).zero? && !(n % divisor2).zero? },
     1.upto(50).select { |n| (n % divisor2).zero? && !(n % divisor1).zero? }]
  end

  def self.soma(list)
    list.inject(0, :+)
  end

  def self.combinar(list1, list2)
    list1.product(list2)
  end
end
