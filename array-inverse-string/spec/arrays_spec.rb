require 'spec_helper'

describe Arrays do
  it 'Deve retornar as palavras que não se repepetem com letras invertidas.' do
    resultado = Arrays.new.inverse_strings(['code', 'doce', 'ecod', 'reporter', 'fama', 'amor', 'repor', 'roma'])

    expect(resultado).to eq ['code', 'reporter', 'fama', 'repor']
  end

  it 'Deve retornar as palavras que não se repepetem com letras invertidas.' do
    resultado = Arrays.new.inverse_strings(['caldo', 'lado', 'boi', 'biologia', 'iob', 'carta', 'odal'])

    expect(resultado).to eq ['caldo', 'biologia', 'carta']
  end

  it 'Deve retornar as palavras que não se repepetem com letras invertidas.' do
    resultado = Arrays.new.inverse_strings(['livro', 'banana', 'fone', 'telefone', 'ananab', 'bolsa', 'lobas'])

    expect(resultado).to eq ['livro', 'fone', 'telefone', 'bolsa', 'lobas']
  end

end