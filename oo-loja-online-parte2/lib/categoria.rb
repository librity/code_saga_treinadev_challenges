class Categoria
  attr_accessor :nome
  def initialize(nome: 'Geral')
    @nome = nome
  end
end