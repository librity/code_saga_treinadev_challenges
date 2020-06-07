require 'spec_helper'

describe FileParser do
  it 'converte string de números para arquivo de binários' do
    FileParser.new.to_binary_file('100;200;300;400')
    expect(File.read('data/data.txt')).to include(
      "1100100\n11001000\n100101100\n110010000")
  end

  it 'converte string de números para arquivo de binários' do
    FileParser.new.to_binary_file('299;300;301;302')
    expect(File.read('data/data.txt')).to include(
      "100101011\n100101100\n100101101\n100101110")
  end
end
