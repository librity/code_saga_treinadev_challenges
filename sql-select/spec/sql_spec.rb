require 'spec_helper'
require 'sqlite3'

describe Sql do
  db = SQLite3::Database.open "db/database.db"

  it 'Realiza a query em Pessoas e retorna todas as pessoas' do
    resultado = db.execute(Sql.new.query)
    expect(resultado).to eq [['Daniel', 36, 'Porto Alegre', '33.525.155-1'],
                             ['Paula', 28, 'Recife', '44.252.256-0'],
                             ['Juca', 15, 'Recife', '22.515.135-3'],
                             ['Joana', 24, 'Salvador', '66.234.262-4'],
                             ['Ana Carolina', 37, 'Salvador', '12.455.616-8']]
  end

  it 'Realiza a query em Pessoas e retorna apenas os nomes das pessoas' do
    resultado = db.execute(Sql.new.query_nome)
    expect(resultado).to eq [["Daniel"], ["Paula"], ["Juca"], ["Joana"], ["Ana Carolina"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas as cidades' do
    resultado = db.execute(Sql.new.query_cidade)
    expect(resultado).to eq [["Porto Alegre"], ["Recife"], ["Recife"], ["Salvador"], ["Salvador"]]
  end

  it 'Realiza a query em Pessoas e retorna apenas cada cidade uma vez' do
    resultado = db.execute(Sql.new.query_uniq_cidade)
    expect(resultado).to eq [["Porto Alegre"], ["Recife"], ["Salvador"]]
  end

  it 'Realiza a query em Livros e retorna apenas os títulos dos livros' do
    resultado = db.execute(Sql.new.query_titulo)
    expect(resultado).to eq [["O estrangeiro"], ["1964"], ["Vidas secas"], ["Harry Potter e a Pedra Filosofal"], ["Musashi"]]
  end

  it 'Realiza a query em Livros e retorna apenas cada editora uma vez' do
    resultado = db.execute(Sql.new.query_editora)
    expect(resultado).to eq [["Ed. Fantasias"], ["Cia. de Livros"], ["Brasil Editora"]]
  end

end
