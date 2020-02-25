# frozen_string_literal: true

class ProdutoLivro < Produto
  attr_accessor :autor, :genero, :paginas

  def initialize(nome:, categoria: Categoria.new, preco:, estoque:, autor:,
                 genero:, paginas:)
    super(nome: nome, categoria: categoria, preco: preco, estoque: estoque)
    @autor   = autor
    @genero  = genero
    @paginas = paginas
  end
end
