# frozen_string_literal: true

# A class that transforms vectors.
class Arrays
  def self.converte_impares_por(lista, numero)
    [lista.reject! { |e| (e % 2).zero? } || [], lista.map { |v| v * numero }]
  end

  def self.converte_pares_por(lista, numero)
    [lista.select! { |e| (e % 2).zero? } || [], lista.map { |v| v * numero }]
  end
end
