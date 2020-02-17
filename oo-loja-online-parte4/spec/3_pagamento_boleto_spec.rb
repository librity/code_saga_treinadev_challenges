require 'spec_helper'

describe 'PagamentoBoleto' do
  it 'deveria criar um objeto da classe PagamentoBoleto' do
    quantidade = 200
    produto = Produto.new(nome: 'Livro', preco: 1, estoque: 300)
    pagamento = PagamentoBoleto.new(quantidade: quantidade, produto: produto)
    pagamento.calcular_valor

    expect(pagamento.valor).to eq 200
  end

  it 'deveria aplicar desconto no valor' do
    quantidade = 200
    produto = Produto.new(nome: 'Livro', preco: 1, estoque: 300)
    pagamento = PagamentoBoleto.new(quantidade: quantidade, produto: produto)
    pagamento.calcular_valor
    pagamento.aplicar_desconto(10)

    expect(pagamento.valor).to eq 180
  end
end
