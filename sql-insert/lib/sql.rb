class Sql
  def insert_carlos
    read_file('insert_carlos.sql')
  end

  def insert_geovana
    read_file('insert_geovana.sql')
  end

  def insert_quixote
    read_file('insert_quixote.sql')
  end

  def insert_tempo
    read_file('insert_tempo.sql')
  end

  private

  def read_file(file)
    File.open(Dir.pwd + "/queries/#{file}").read
  end
end
