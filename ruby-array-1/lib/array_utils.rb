# frozen_string_literal: true

# A class that does 5th-grade math
class ArrayUtils
  def self.multiplos(qtd, multiplo)
    (0...qtd).map { |i| multiplo * (i + 1) }
  end

  def self.tabuada(number)
    (0...number).map { |i| multiplos(10, i + 1) }
  end

  def self.ultimo(array)
    array[-1]
  end
end
