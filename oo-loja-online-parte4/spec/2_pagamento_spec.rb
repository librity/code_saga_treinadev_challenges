require 'spec_helper'

describe Pagamento do
  it 'deveria criar um produto para aquele pagamento' do
    produto = 'Caneta'
    preco = 5
    estoque = 10
    produto = Produto.new(nome: produto, preco: preco,
                          estoque: estoque)

    quantidade = 10
    pagamento = Pagamento.new(quantidade: quantidade, produto: produto)

    expect(pagamento.produto).to be_a(Produto)
  end

  it 'ao calcular valor deveria remover a quantidade do estoque' do
    quantidade = 3
    produto = Produto.new(nome: 'Caneta', preco: 3, estoque: 100)
    pagamento = Pagamento.new(quantidade: quantidade, produto: produto)

    pagamento.calcular_valor

    expect(pagamento.valor).to eq 9
    expect(produto.estoque).to eq 97
  end

  it 'deveria aplicar desconto no valor' do
    quantidade = 10
    produto = Produto.new(nome: 'Caderno', preco: 10, estoque: 100)
    pagamento = Pagamento.new(quantidade: quantidade, produto: produto)
    pagamento.calcular_valor
    pagamento.aplicar_desconto(10)

    expect(pagamento.valor).to eq 90
  end
end
