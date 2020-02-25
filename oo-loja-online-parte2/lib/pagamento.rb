# frozen_string_literal: true

# A class that handles payments.
class Pagamento
  attr_accessor :quantidade, :produto, :preco, :valor
  def initialize(quantidade: 1, produto: Produto.new(preco: preco).nome,
                 preco: 1)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @valor = preco * quantidade
  end

  def aplicar_desconto(discount)
    @valor -= discount
  end
end
