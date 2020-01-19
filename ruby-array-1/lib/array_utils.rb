# frozen_string_literal: true

# A class that does 5th-grade math
class ArrayUtils
  def self.multiplos(qtd, multiplo)
    multiples = []
    qtd.times { |i| multiples[i] = multiplo * (i + 1) }
    multiples
  end

  def self.tabuada(number)
    table = []
    number.times { |i| table[i] = multiplos(10, i + 1) }
    table
  end

  def self.ultimo(array)
    array[-1]
  end
end
