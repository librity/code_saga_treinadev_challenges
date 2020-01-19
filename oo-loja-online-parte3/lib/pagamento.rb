# frozen_string_literal: true

# A class that drains your wealth of nations.
class Pagamento
  attr_accessor :produto, :quantidade, :preco, :valor

  def new_product
    Produto.new(nome: 'Geral')
  end

  def initialize(quantidade:, produto: new_product, preco: new_product.preco)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @valor = @quantidade * preco
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem / 100
  end
end
