class Sql
  def query
    read_file('query.sql')
  end

  def query_nome
    read_file('query_nome.sql')
  end

  def query_cidade
    read_file('query_cidade.sql')
  end

  def query_uniq_cidade
    read_file('query_uniq_cidade.sql')
  end

  def query_titulo
    read_file('query_titulo.sql')
  end

  def query_editora
    read_file('query_editora.sql')
  end

  private

  def read_file(file)
    File.open(Dir.pwd + "/queries/#{file}").read
  end

end
