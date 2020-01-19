# frozen_string_literal: true

# A class that transforms vectors.
class Arrays
  def self.converte_impares_por(lista, numero)
    odds = lista.reject { |e| (e % 2).zero? }
    multiples = []
    odds.each_with_index { |v, i| multiples[i] = v * numero }
    [odds, multiples]
  end

  def self.converte_pares_por(lista, numero)
    odds = lista.select { |e| (e % 2).zero? }
    multiples = []
    odds.each_with_index { |v, i| multiples[i] = v * numero }
    [odds, multiples]
  end
end
