# frozen_string_literal: true

# A class that makes capitalism suck the life out of you.
class Produto
  attr_accessor :nome, :categoria, :preco, :estoque

  def new_category
    Categoria.new(nome: 'Geral')
  end

  def initialize(nome:, preco:, estoque:, categoria: new_category)
    @nome = nome
    @categoria = categoria
    @preco = preco
    @estoque = estoque
  end

  def adiciona_estoque(quantidade)
    @estoque += quantidade
  end

  def remove_estoque(quantidade)
    @estoque -= quantidade
  end
end
