require 'spec_helper'

describe Quadrados do
  it 'Quadrado da soma dos 5 primeiros primos' do
    expect(Quadrados.new(5).quadrado_da_soma).to eq 784
  end

  it 'Soma do quadrado dos 5 primeiros primos' do
    expect(Quadrados.new(5).soma_dos_quadrados).to eq 208
  end

  it 'Diferença das somas e quadrados dos 5 primos' do
    expect(Quadrados.new(5).diferenca).to eq 576
  end

  it 'Quadrado da soma dos 15 primeiros primos' do
    expect(Quadrados.new(15).quadrado_da_soma).to eq 107584
  end

  it 'Soma do quadrado dos 15 primeiros primos' do
    expect(Quadrados.new(15).soma_dos_quadrados).to eq 10466
  end

  it 'Diferença das somas e quadrados dos 15 primos' do
    expect(Quadrados.new(15).diferenca).to eq 97118
  end

  it 'Quadrado da soma dos 10001 primeiros primos' do
    expect(Quadrados.new(10001).quadrado_da_soma).to eq 246284065751183716
  end

  it 'Soma do quadrado dos 10001 primeiros primos' do
    expect(Quadrados.new(10001).soma_dos_quadrados).to eq 34110568595140
  end

  it 'Diferença das somas e quadrados dos 10001 primos' do
    expect(Quadrados.new(10001).diferenca).to eq 246249955182588576
  end
end
