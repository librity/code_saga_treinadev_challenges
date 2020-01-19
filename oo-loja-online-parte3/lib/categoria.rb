# frozen_string_literal: true

# A class that organizes stuff.
class Categoria
  attr_accessor :nome
  def initialize(nome: 'Geral')
    @nome = nome
  end
end
