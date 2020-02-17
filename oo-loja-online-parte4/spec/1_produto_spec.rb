require 'spec_helper'

describe Produto do
  it "deveria criar um Produto de categoria específica" do
    nome = 'Cabo HDMI'
    categoria = Categoria.new(nome: 'Eletrônicos')
    preco = 25
    estoque = 5
    produto = Produto.new(nome: nome, categoria: categoria , preco: preco,
                          estoque: estoque)

    expect(produto.nome).to eq 'Cabo HDMI'
    expect(produto.categoria.nome).to eq 'Eletrônicos'
    expect(produto.preco).to eq 25
    expect(produto.estoque).to eq 5
  end

  it "deveria criar um objeto de categoria Geral por padrão" do
    nome = 'Teclado'
    preco = 100
    estoque = 3
    produto = Produto.new(nome: nome, preco: preco, estoque: estoque)

    expect(produto.nome).to eq 'Teclado'
    expect(produto.categoria.nome).to eq 'Geral'
    expect(produto.preco).to eq 100
    expect(produto.estoque).to eq 3
  end

  it "deveria adicionar quantidade em estoque" do
    nome = 'Teclado'
    preco = 100
    estoque = 3
    produto = Produto.new(nome: nome, preco: preco, estoque: estoque)

    produto.adiciona_estoque(2)

    expect(produto.estoque).to eq 5
  end

  it "deveria subtrair quantidade em estoque" do
    nome = 'Teclado'
    preco = 100
    estoque = 7
    produto = Produto.new(nome: nome, preco: preco, estoque: estoque)

    produto.remove_estoque(5)

    expect(produto.estoque).to eq 2
  end
end
