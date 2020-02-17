class Pagamento
  attr_accessor :produto, :quantidade, :preco, :valor

  def initialize(quantidade:, produto: 'Sem nome', preco: 0)
    @quantidade = quantidade
    @produto = produto
    @preco = preco
  end

  def calcular_valor
    @produto.remove_estoque(@quantidade)
    @valor = @quantidade * @produto.preco
  end

  def aplicar_desconto(porcentagem)
    @valor -= @valor * porcentagem / 100
  end
end
