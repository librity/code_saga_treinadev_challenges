# frozen_string_literal: true

# A class that creates a product
class Produto
  attr_accessor :nome, :categoria, :preco, :estoque
  def initialize(nome: 'Geral', categoria: 'Geral', preco: 0, estoque: 1)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end
end
