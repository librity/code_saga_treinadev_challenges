class Sql
  def delete_keyla
    read_file('delete_keyla.sql')
  end
  
  def delete_cidade_nil
    read_file('delete_cidade_nil.sql')
  end

  def delete_edfantasias
    read_file('delete_edfantasias.sql')
  end

  def delete_editora_not_nil
    read_file('delete_editora_not_nil.sql')
  end
  
  def delete_todos_livros
    read_file('delete_todos_livros.sql')
  end

  private

  def read_file(file)
    File.open(Dir.pwd + "/queries/#{file}").read
  end
end
