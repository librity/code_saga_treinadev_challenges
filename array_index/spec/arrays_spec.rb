require 'spec_helper'

describe Arrays do
  it 'Multiplica cada elemento por seu indice: [3, 7]' do
    array = [3, 7]

    expect(Arrays.multiplica_indices(array)).to eq [0, 7]
  end

  it 'Multiplica cada elemento por seu indice: [1, 2, 3, 4, 5, 6]' do
    array = [1, 2, 3, 4, 5, 6]

    expect(Arrays.multiplica_indices(array)).to eq [0, 2, 6, 12, 20, 30]
  end

  it 'Multiplica cada elemento por seu indice: [4, 1, 6, 7, 0, 3, 0]' do
    array = [4, 1, 6, 7, 9, 3, 0]

    expect(Arrays.multiplica_indices(array)).to eq [0, 1, 12, 21, 36, 15, 0]
  end

  it 'Multiplica cada elemento por seu indice: [0, 4, 1, 12, 7, 23, 2]' do
    array = [0, 4, 1, 12, 7, 23, 2]

    expect(Arrays.multiplica_indices(array)).to eq [0, 4, 2, 36, 28, 115, 12]
  end
end

