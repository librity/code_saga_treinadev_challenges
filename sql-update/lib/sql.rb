class Sql
  def update_maioridade
    read_file('update_maioridade.sql')
  end
  
  def update_pernambuco
    read_file('update_pernambuco.sql')
  end

  def update_estrangeiro
    read_file('update_estrangeiro.sql')
  end
  
  def update_nil
    read_file('update_nil.sql')
  end

  def update_editoras
    read_file('update_editoras.sql')
  end

  def update_not_null
    read_file('update_not_null.sql')
  end

  private

  def read_file(file)
    File.open(Dir.pwd + "/queries/#{file}").read
  end
end
