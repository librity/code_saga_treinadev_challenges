require 'spec_helper'

describe 'ArrayUtils' do
  describe '.checar_duplicatas' do
    it 'procura duplicatas no array e retorna [13, 22]' do
      lista = [13, 22, 11, 3, 4, 5, 7, 33, 22, 13]
      expect(ArrayUtils.new().checar_duplicatas(lista)).to eq [13, 22]
    end

    it 'procura duplicatas no array e retorna [1, 2, 3]' do
      lista = [1, 2, 3, 4, 5, 8, 9 , 10, 1, 2, 3]
      expect(ArrayUtils.new().checar_duplicatas(lista)).to eq [1, 2, 3]
    end

    it 'procura duplicatas no array e retorna []' do
      lista = [73, 42, 4, 22, 53, 54, 12, 66, 83, 84, 23, 77, 98]
      expect(ArrayUtils.new().checar_duplicatas(lista)).to eq []
    end

    it 'procura duplicatas no array e retorna [21]' do
      lista = [40, 21, 54, 12, 4, 8, 36, 47, 85, 5, 2, 21]
      expect(ArrayUtils.new().checar_duplicatas(lista)).to eq [21]
    end

    it 'procura duplicatas no array e retorna [13, 64, 6]' do
      lista = [5, 13, 13, 64, 64, 64, 6, 6, 6, 9]
      expect(ArrayUtils.new().checar_duplicatas(lista)).to eq [13, 64, 6]
    end
  end
end
