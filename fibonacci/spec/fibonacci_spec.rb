require 'spec_helper'

describe Fibonacci do
  it 'retorna o elemento F(0) da sequência de Fibonacci' do
    expect(Fibonacci.new.element(0)).to eq 0
  end

  it 'retorna o elemento F(5) da sequência de Fibonacci' do
    expect(Fibonacci.new.element(5)).to eq 5
  end

  it 'retorna o elemento F(10) da sequência de Fibonacci' do
    expect(Fibonacci.new.element(10)).to eq 55
  end

  it 'retorna o elemento F(15) da sequência de Fibonacci' do
    expect(Fibonacci.new.element(15)).to eq 610
  end

  it 'retorna os elementos de fibonnacci até o primeiro' do
    expect(Fibonacci.new.elements(0)).to eq [0]
  end

  it 'retorna os elementos de fibonnacci até o quinto' do
    expect(Fibonacci.new.elements(5)).to eq [0, 1, 1, 2, 3, 5]
  end

  it 'retorna os elementos de fibonnacci até o décimo' do
    expect(Fibonacci.new.elements(10)).to eq [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55]
  end
end
