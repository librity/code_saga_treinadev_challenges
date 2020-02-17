require 'spec_helper'

describe Contents do
  it 'Verifica se a frase pode ser feita com as palavras e retorna: verdadeiro.' do
    result = Contents.new.can_make_sentence?(['the', 'who', 'Boy', 'lived', 'wand', 'magic', 'The boy who lived'])
    expect(result).to eq true
  end

  it 'Verifica se a frase pode ser feita com as palavras e retorna: verdadeiro.' do
    result = Contents.new.can_make_sentence?(['Phone', 'e.t.', 'ring', 'plane', 'home', 'music', 'E.T. phone home'])
    expect(result).to eq true
  end

  it 'Verifica se a frase pode ser feita com as palavras e retorna: falso.' do
    result = Contents.new.can_make_sentence?(['contemplation', 'Evening', 'Cat', 'coffee', 'are', 'Mornings are for coffee and contemplation'])
    expect(result).to eq false
  end

  it 'Verifica se a frase pode ser feita com as palavras e retorna: falso.' do
    result = Contents.new.can_make_sentence?(['i', 'seed', 'Deader', 'peoples', 'I see dead people'])
    expect(result).to eq false
  end
end
