require 'spec_helper'

describe 'ProdutoLivro' do
  it 'deveria criar um objeto da classe ProdutoLivro' do
    nome = 'Medo Clássico'
    preco = 47
    estoque = 4
    autor = 'H.P. Lovecraft'
    genero = 'Horror Cósmico'
    paginas = 500
    livro = ProdutoLivro.new(nome: nome, preco: preco,
                             estoque: estoque, autor: autor,
                             genero: genero, paginas: paginas)

    expect(livro.nome).to eq 'Medo Clássico'
    expect(livro.preco).to eq 47
    expect(livro.estoque).to eq 4
    expect(livro.autor).to eq 'H.P. Lovecraft'
    expect(livro.genero).to eq 'Horror Cósmico'
    expect(livro.paginas).to eq 500
  end

  it 'deve adicionar quantidade a estoque' do
    nome = 'Medo Clássico'
    preco = 47
    estoque = 4
    autor = 'H.P. Lovecraft'
    genero = 'Horror Cósmico'
    paginas = 500
    livro = ProdutoLivro.new(nome: nome, preco: preco,
                             estoque: estoque, autor: autor,
                             genero: genero, paginas: paginas)
    livro.adiciona_estoque(5)

    expect(livro.estoque).to eq 9

  end

  it 'deve remover quantidade do estoque' do
    nome = 'Medo Clássico'
    preco = 47
    estoque = 4
    autor = 'H.P. Lovecraft'
    genero = 'Horror Cósmico'
    paginas = 500
    livro = ProdutoLivro.new(nome: nome, preco: preco,
                             estoque: estoque, autor: autor,
                             genero: genero, paginas: paginas)
    livro.remove_estoque(3)

    expect(livro.estoque).to eq 1
  end
end

