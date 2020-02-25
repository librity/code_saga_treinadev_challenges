require 'spec_helper'

describe Telefone do
  it 'Decodifica sequência de teclas pressionadas e escreve: et.' do
    expect(Telefone.new().teclar('33 8')).to eq 'et'
  end

  it 'Decodifica sequência de teclas pressionadas e escreve: ruby on rails.' do
    expect(Telefone.new().teclar('777 88 22 999 0 666 66 0 777 2 444 555 7777')).to eq 'ruby on rails'
  end

  it 'Decodifica sequência de teclas pressionadas e escreve: code saga.' do
    expect(Telefone.new().teclar('222 666 3 33 0 7777 2 4 2')).to eq 'code saga'
  end
end
