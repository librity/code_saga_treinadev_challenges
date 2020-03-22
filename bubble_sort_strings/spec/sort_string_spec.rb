require 'spec_helper'

describe SortString do

  describe 'Ordenar palavras por quantidade de letras' do

    it 'Frase 01: Com grandes poderes vem grandes responsabilidades' do
      phrase = "Com grandes poderes vem grandes responsabilidades"

      expect(SortString.by_word_size(phrase)).to eq "Com vem grandes poderes grandes responsabilidades"
    end

    it 'Frase 02: A Força está com você' do
      phrase = "A Força está com você"

      expect(SortString.by_word_size(phrase)).to eq "A com está você Força"
    end

    it 'Frase 03: O inverno está chegando' do
      phrase = "O inverno está chegando"

      expect(SortString.by_word_size(phrase)).to eq "O está inverno chegando"
    end
  end
end
