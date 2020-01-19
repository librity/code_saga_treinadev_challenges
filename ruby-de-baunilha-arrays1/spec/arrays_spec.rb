require 'spec_helper'

describe Arrays do
  it 'converte impares para multiplos de 3' do
    lista = [2, 3, 4, 5, 6, 7, 10, 11, 12]
    expect(Arrays.converte_impares_por(lista,  3))
      .to eq [[3, 5, 7, 11],  [9, 15, 21, 33]]
  end

  it 'converte impares para multiplos de 2' do
    lista = [2, 3, 4, 5, 6, 7, 10, 11, 12]
    expect(Arrays.converte_impares_por(lista,  2))
      .to eq [[3, 5, 7, 11],  [6, 10, 14, 22]]
  end

  it 'converte impares para multiplos de 5' do
    lista = [2, 4, 10]
    expect(Arrays.converte_impares_por(lista, 5)).to eq [[], []]
  end

  it 'converte uma lista vazia' do
    lista = []
    expect(Arrays.converte_impares_por(lista, 5)).to eq [[], []]
  end

  it 'converte pares para multiplos de 6' do
    lista = [2, 3, 4, 5, 6, 7, 10, 11, 12]
    expect(Arrays.converte_pares_por(lista, 6))
      .to eq [[2, 4, 6, 10, 12], [12, 24, 36, 60, 72]]
  end

  it 'converte pares para multiplos de 2' do
    lista = [2, 3, 4, 5, 6, 7, 10, 11, 12]
    expect(Arrays.converte_pares_por(lista, 2))
      .to eq [[2, 4, 6, 10, 12], [4, 8, 12, 20, 24]]
  end

  it 'converte pares para multiplos de 6' do
    lista = [3, 9, 11]
    expect(Arrays.converte_pares_por(lista, 6)).to eq [[], []]
  end

  it 'converte uma lista vazia' do
    lista = []
    expect(Arrays.converte_pares_por(lista, 6)).to eq [[], []]
  end
end
