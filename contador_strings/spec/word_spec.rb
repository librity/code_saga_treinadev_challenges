# frozen_string_literal: true

require 'spec_helper'

describe Word do
  describe 'Conta quantidade de vogais na string' do
    it 'Frase 01: Para onde vamos não precisamos de ruas' do
      phrase = 'Para onde vamos não precisamos de ruas'

      expect(Word.new.vowels_count(phrase)).to eq 15
    end

    it 'Frase 02: Eu sei kung fu' do
      phrase = 'Eu sei kung fu'

      expect(Word.new.vowels_count(phrase)).to eq 6
    end
  end

  describe 'Conta quantidade de consoantes na string' do
    it 'Frase 01: Esses não são os droids que estão procurando' do
      phrase = 'Esses não são os droids que estão procurando'

      expect(Word.new.consonants_count(phrase)).to eq 19
    end

    it 'Frase 02: Um anel para todos governar' do
      phrase = 'Um anel para todos governar'

      expect(Word.new.consonants_count(phrase)).to eq 13
    end
  end
end
