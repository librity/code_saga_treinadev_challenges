class Pagamento
  attr_accessor :produto, :quantidade, :valor

  def initialize(quantidade:, produto:)
    @quantidade = quantidade
    @produto = produto
  end

  def calcular_valor
    produto.remove_estoque(quantidade)
    @valor = @quantidade * produto.preco
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem/100
  end
end

