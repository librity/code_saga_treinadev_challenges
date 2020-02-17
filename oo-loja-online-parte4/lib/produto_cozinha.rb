class ProdutoCozinha < Produto
  attr_accessor :material, :cor
  def initialize(nome:, preco:, estoque:, cor:,
                 material:)
    super(nome: nome, preco: preco, estoque: estoque)
    @cor = cor
    @material = material
  end
end
