# frozen_string_literal: true

require 'spec_helper'

describe Word do
  describe 'Encontrar a palavra mais longa e retornar' do
    it 'Frase 01: Eu acho sua falta de fé perturbadora.' do
      phrase = 'Eu acho sua falta de fé perturbadora'

      expect(Word.new.longest(phrase)).to eq 'perturbadora'
    end

    it 'Frase 02: Eu tenho um mau pressentimento sobre isso.' do
      phrase = 'Eu tenho um mau pressentimento sobre isso'

      expect(Word.new.longest(phrase)).to eq 'pressentimento'
    end
  end

  describe 'Encontrar a palavra mais curta e retornar' do
    it 'Frase 01: Estes não são os androides que vocês procuram.' do
      phrase = 'Estes não são os androides que vocês procuram.'

      expect(Word.new.shortest(phrase)).to eq 'os'
    end

    it 'Frase 02: Que a Força esteja com você' do
      phrase = 'Que a Força esteja com você'

      expect(Word.new.shortest(phrase)).to eq 'a'
    end
  end
end
