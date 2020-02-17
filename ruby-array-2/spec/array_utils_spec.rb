require 'spec_helper'

describe ArrayUtils do
  describe '.compara' do
    it 'comparar duas lista por valores' do
      expect(ArrayUtils.compara([1, 3], [3, 1])).to eq true
      expect(ArrayUtils.compara([1, 3, 1], [3, 1, 1])).to eq true
      expect(ArrayUtils.compara([1, 3, 1], [3, 1])).to eq false
      expect(ArrayUtils.compara([3, 1], [3, 1])).to eq true
      expect(ArrayUtils.compara([3, 1, 4, 5, 7, 9], [1, 3, 4, 5, 9, 7])).to eq true
    end
  end

  describe '.divisiveis' do
    it 'listar números entre 0 e 50 divisiveis por 3 e por 5, somente por 3 e somente por 5' do
      expect(ArrayUtils.divisiveis(3, 5)).to eq [
        [15, 30, 45],
        [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48],
        [5, 10, 20, 25, 35, 40, 50]
      ]
    end
    it 'listar números entre 0 e 50 divisiveis por 4 e por 6, somente por 4 e somente por 6' do
      expect(ArrayUtils.divisiveis(4, 6)).to eq [
        [12, 24, 36, 48],
        [4, 8, 16, 20, 28, 32, 40, 44],
        [6, 18, 30, 42]
      ]
    end
  end

  describe '.soma' do
    it 'deve somar todos os elementos do array' do
      list = [4, 8, 16, 20, 28, 32, 40, 44]
      expect(ArrayUtils.soma(list)).to eq 192

      list2 = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48]
      expect(ArrayUtils.soma(list2)).to eq 318
    end
  end

  describe '.combinar' do
    it 'combinar dezenas e unidades' do
      numeros = [1, 2, 3, 4, 5]
      letras = %w[a b c d e]
      expect(ArrayUtils.combinar(numeros, letras)).to eq [
        [1, 'a'], [1, 'b'], [1, 'c'], [1, 'd'], [1, 'e'], [2, 'a'], [2, 'b'],
        [2, 'c'], [2, 'd'], [2, 'e'], [3, 'a'], [3, 'b'], [3, 'c'], [3, 'd'],
        [3, 'e'], [4, 'a'], [4, 'b'], [4, 'c'], [4, 'd'], [4, 'e'], [5, 'a'],
        [5, 'b'], [5, 'c'], [5, 'd'], [5, 'e']
      ]

      dezenas = %w[vinte trinta quarenta]
      unidades = ['', 'um', 'dois', 'tres', 'quatro', 'quinta', 'sexta', 'sete', 'oito', 'nove']
      expect(ArrayUtils.combinar(dezenas, unidades)).to eq [
        ['vinte', ''],
        %w[vinte um],
        %w[vinte dois],
        %w[vinte tres],
        %w[vinte quatro],
        %w[vinte quinta],
        %w[vinte sexta],
        %w[vinte sete],
        %w[vinte oito],
        %w[vinte nove],
        ['trinta', ''],
        %w[trinta um],
        %w[trinta dois],
        %w[trinta tres],
        %w[trinta quatro],
        %w[trinta quinta],
        %w[trinta sexta],
        %w[trinta sete],
        %w[trinta oito],
        %w[trinta nove],
        ['quarenta', ''],
        %w[quarenta um],
        %w[quarenta dois],
        %w[quarenta tres],
        %w[quarenta quatro],
        %w[quarenta quinta],
        %w[quarenta sexta],
        %w[quarenta sete],
        %w[quarenta oito],
        %w[quarenta nove]
      ]
    end
  end
end
