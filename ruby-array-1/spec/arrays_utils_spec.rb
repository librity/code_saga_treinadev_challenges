# frozen_string_literal: true

require 'spec_helper'

describe 'Array' do
  it 'lista de numeros multiplos de 2' do
    expect(ArrayUtils.multiplos(5, 2)).to eq [2, 4, 6, 8, 10]
  end

  it '3 multiplos de 6' do
    expect(ArrayUtils.multiplos(3, 6)).to eq [6, 12, 18]
  end

  it 'tabuada de 1 a 10' do
    expect(ArrayUtils.tabuada(10)).to eq [
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      [2, 4, 6, 8, 10, 12, 14, 16, 18, 20],
      [3, 6, 9, 12, 15, 18, 21, 24, 27, 30],
      [4, 8, 12, 16, 20, 24, 28, 32, 36, 40],
      [5, 10, 15, 20, 25, 30, 35, 40, 45, 50],
      [6, 12, 18, 24, 30, 36, 42, 48, 54, 60],
      [7, 14, 21, 28, 35, 42, 49, 56, 63, 70],
      [8, 16, 24, 32, 40, 48, 56, 64, 72, 80],
      [9, 18, 27, 36, 45, 54, 63, 72, 81, 90],
      [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
    ]
  end

  it 'tabuada de 1 a 3' do
    expect(ArrayUtils.tabuada(3)).to eq [
      [1, 2, 3, 4, 5, 6, 7, 8, 9, 10],
      [2, 4, 6, 8, 10, 12, 14, 16, 18, 20],
      [3, 6, 9, 12, 15, 18, 21, 24, 27, 30]
    ]
  end

  it 'ultimo' do
    lista = [2, 4, 56, 71]
    expect(ArrayUtils.ultimo(lista)).to eq 71
  end

  it 'ultimo hard!' do
    lista = [56, 2, 4, 71, 6]
    allow(lista).to receive(:last).and_throw(Exception)
    expect(ArrayUtils.ultimo(lista)).to eq 6
  end
end
