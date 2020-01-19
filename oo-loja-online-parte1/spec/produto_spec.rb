# frozen_string_literal: true

require 'spec_helper'

describe 'Produto' do
  it 'deveria conseguir criar um objeto Produto de categoria específica' do
    nome = 'Cabo HDMI'
    categoria = 'Eletrônicos'
    preco = 25
    estoque = 5
    produto = Produto.new(nome: nome, categoria: categoria, preco: preco, estoque: estoque)

    expect(produto.nome).to eq 'Cabo HDMI'
    expect(produto.categoria).to eq 'Eletrônicos'
    expect(produto.preco).to eq 25
    expect(produto.estoque).to eq 5
  end

  it 'deveria conseguir criar um objeto Produto de categoria Geral por padrão' do
    nome = 'Teclado'
    preco = 100
    estoque = 3
    produto = Produto.new(nome: nome, preco: preco, estoque: estoque)

    expect(produto.nome).to eq 'Teclado'
    expect(produto.categoria).to eq 'Geral'
    expect(produto.preco).to eq 100
    expect(produto.estoque).to eq 3
  end
end
