require 'spec_helper'

describe Word do
  it 'Checa se code e doce são anagramas e retorna: verdadeiro.' do

    expect(Word.new().anagrama?('code', 'doce')).to eq true
  end

  it 'Checa se one e neo são anagramas e retorna: verdadeiro.' do

    expect(Word.new().anagrama?('one', 'neo')).to eq true
  end

  it 'Checa se atod e rota são anagramas e retorna: falso.' do

    expect(Word.new().anagrama?('atod', 'rota')).to eq false
  end

  it 'Checa se arquiteto e itearuqota são anagramas e retorna: falso.' do

    expect(Word.new().anagrama?('arquiteto', 'itearuqota')).to eq false
  end

  it 'Checa se oraculo e loucaros são anagramas e retorna: falso.' do

    expect(Word.new().anagrama?('oraculo', 'loucaros')).to eq false
  end

  it 'Checa se Matrix e xmarit são anagramas e retorna: verdadeiro.' do

    expect(Word.new().anagrama?('Matrix', 'xmarit')).to eq true
  end
end

