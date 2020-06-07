require 'spec_helper'
require 'sqlite3'

describe Sql do
  before do
    system('rm db/database.db')
    db = SQLite3::Database.open 'db/database.db'
    db.execute <<-SQL
      CREATE TABLE Pessoas(
       Nome varchar(255),
       Idade int,
       Cidade varchar(255),
       Maioridade bit
      );
    SQL
    db.execute <<-SQL
      CREATE TABLE Livros(
        Titulo varchar(255),
        Autor varchar(255),
        Genero varchar(255),
        Editora varchar(255)
      );
    SQL

    [
      ['Daniel', 36, 'Porto Alegre', 0],
      ['Paula', 28, 'Pernambuco', 0],
      ['Juca', 15, 'Pernambuco', 0],
      ['Joana', 24, 'Salvador', 0],
      ['Ana Carolina', 16, 'Salvador', 0],
      ['Henrique', 26, nil , 0],
      ['Erika', 18, nil, 0]
    ].each do |dados|
      db.execute "INSERT INTO Pessoas VALUES ( ?, ?, ?, ? )", dados
    end

    [
      ['O Estrangeiro', 'Albert Camus', 'Filosofia', 'Ed. Fantasias'],
      ['1984', 'George Orwell', 'Ficção', 'Cia. de Livros'],
      ['Vidas secas', 'Graciliano Ramos', 'Romance', 'Brasil Editora'],
      ['Harry Potter e a Pedra Filosofal', 'J. K. Rowling', 'Ficção', 'Ed. Fantasias'],
      ['Musashi', 'Eiji Yoshikawa', 'Romance', 'Cia. de Livros'],
      ['Dom Casmurro', 'Machado de Assis', 'Romance', nil ],
    ].each do |dados_livro|
      db.execute "INSERT INTO Livros VALUES ( ?, ?, ?, ? )", dados_livro
    end

    rescue SQLite3::Exception => e
      puts e
    ensure
      db.close if db
  end

  it 'Atualiza cidade em Pessoas corrigindo Pernambuco para Recife' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.update_pernambuco)
    resultado = db.execute("SELECT cidade FROM Pessoas")
    expect(resultado).to eq [["Porto Alegre"],["Recife"],["Recife"],["Salvador"],["Salvador"],[nil], [nil]]
  end

  it 'Atualiza valores nulos na tabela para Belo Horizonte' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.update_nil)
    resultado = db.execute("SELECT Nome FROM Pessoas WHERE cidade='Belo Horizonte'")
    expect(resultado).to eq [['Henrique'],['Erika']]
  end

  it 'Atualiza maioridade para 1 em Pessoas somente para aqueles que possuem idade maior que 18 anos' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.update_maioridade)
    resultado = db.execute("SELECT maioridade FROM Pessoas")
    expect(resultado).to eq [[1],[1],[0],[1],[0],[1],[1]]
  end

  it 'Atualiza em Livros o Genero de O Estrangeiro para Romance' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.update_estrangeiro)
    resultado = db.execute("SELECT Genero FROM Livros WHERE titulo='O Estrangeiro'")
    expect(resultado).to eq [['Romance']]
  end

  it 'Atualiza genero para Romance em Livros que possuem editora não nula' do
    db = SQLite3::Database.open 'db/database.db'
    db.execute(Sql.new.update_not_null)
    resultado = db.execute("SELECT Genero FROM Livros")
    expect(resultado).to eq [["Romance"], ["Romance"], ["Romance"], ["Romance"], ["Romance"], ["Romance"]]
  end
end
