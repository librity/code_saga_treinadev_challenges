require 'spec_helper'

describe FileParser do
  it 'converte binario para inteiro' do
    expect(FileParser.new.to_integer('1100100')).to eq 100
  end

  it 'converte outro binario para inteiro' do
    expect(FileParser.new.to_integer('11001000')).to eq 200
  end

  it 'converte arquivo binario e soma os números' do
    expect(FileParser.new.convert('data/file1.txt')).to eq 5500
  end

  it 'converte outro arquivo binario e soma os números' do
    expect(FileParser.new.convert('data/file2.txt')).to eq 1202
  end
end
