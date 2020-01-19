require 'spec_helper'

describe 'Pagamento' do
  it 'deveria criar um objeto Pagamento especificado e calcular o valor' do
    quantidade = 10
    produto = 'Caneta'
    preco = 5
    pagamento = Pagamento.new(quantidade: quantidade, produto: produto, preco: preco)

    pagamento.calcular_valor

    expect(pagamento.valor).to eq 50
    expect(pagamento.produto).to eq 'Caneta'
  end

  it 'deveria criar um objeto Pagamento com atributo nome Sem nome por padrão' do
    quantidade = 10
    preco = 5
    pagamento = Pagamento.new(quantidade: quantidade, preco: preco)

    pagamento.calcular_valor

    expect(pagamento.valor).to eq 50
    expect(pagamento.produto).to eq 'Sem nome'
  end

  it 'deveria aplicar desconto no valor' do
    quantidade = 10
    preco = 10
    pagamento = Pagamento.new(quantidade: quantidade, preco: preco)
    pagamento.calcular_valor
    pagamento.aplicar_desconto(10)

    expect(pagamento.valor).to eq 90
  end
end
