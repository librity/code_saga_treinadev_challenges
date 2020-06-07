require 'spec_helper'
require 'sqlite3'

describe Sql do
  db = SQLite3::Database.open "db/database.db"

  it 'Realiza a query em Pessoas e retorna todos os dados de quem mora em Salvador' do
    resultado = db.execute(Sql.new.query_salvador)
    expect(resultado).to eq [["Joana", 24, "Salvador", "66.234.262-4"],
                             ["Ana Carolina", 37, "Salvador", "12.455.616-8"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas os nomes de quem mora em Recife' do
    resultado = db.execute(Sql.new.query_nome_recife)
    expect(resultado).to eq [["Paula"], ["Juca"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas os nomes das pessoas com idade maior que 25 anos' do
    resultado = db.execute(Sql.new.query_nome_idade)
    expect(resultado).to eq [["Daniel"], ["Paula"], ["Ana Carolina"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas nome de quem não possui RG' do
    resultado = db.execute(Sql.new.query_nil_or_empty)
    expect(resultado).to eq [['Daniel'],['Paula']]
  end

  it 'Realiza a query em Livros e retorna os autores que publicam na editora Cia. de Livros' do
    resultado = db.execute(Sql.new.query_autor_editora)
    expect(resultado).to eq [["George Orwell"], ["Eiji Yoshikawa"]]
  end

  it 'Realiza a query em Livros e retorna os títulos que possuem mais de 300 páginas da Ed. Fantasias' do
    resultado = db.execute(Sql.new.query_pag_editora)
    expect(resultado).to eq [['Harry Potter e a Pedra Filosofal']]
  end

  it 'Realiza a query em Livros e retorna os autores publicados pela Ed. Fantasias ou Brasil Editora' do
    resultado = db.execute(Sql.new.query_editoras)
    expect(resultado).to eq [['Albert Camus'], ['Graciliano Ramos'],['J. K. Rowling']]
  end

  it 'Realiza a query em Livros e retorna os títulos que não foram publicados pela Cia. de Livros' do
    resultado = db.execute(Sql.new.query_not_editora)
    expect(resultado).to eq [['O estrangeiro'], ['Vidas secas'], ['Harry Potter e a Pedra Filosofal']]
  end

  it 'Realiza a query em Livros e retorna uma ocorrência de cada editora que possui Ed em seu nome' do
    resultado = db.execute(Sql.new.query_ed)
    expect(resultado).to eq [['Ed. Fantasias'], ['Brasil Editora']]
  end
end
