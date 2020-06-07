class Sql
  def query_salvador
    read_file('query_salvador.sql')
  end

  def query_nome_recife
    read_file('query_nome_recife.sql')
  end

  def query_nome_idade
    read_file('query_nome_idade.sql')
  end

  def query_autor_editora
    read_file('query_autor_editora.sql')
  end

  def query_pag_editora
    read_file('query_pag_editora.sql')
  end

  def query_editoras
    read_file('query_editoras.sql')
  end

  def query_not_editora
    read_file('query_not_editora.sql')
  end

  def query_ed
    read_file('query_ed.sql')
  end

  def query_nil_or_empty
    read_file('query_nil_or_empty.sql')
  end
  private

  def read_file(file)
    File.open(Dir.pwd + "/queries/#{file}").read
  end
end
