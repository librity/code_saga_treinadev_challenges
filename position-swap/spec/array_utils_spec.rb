require 'spec_helper'

describe ArrayUtils do
  it "Permuta posição de elementos no array." do
    lista = [3, 9, 4, 7]

    expect(ArrayUtils.new().troca(lista)).to eq [9, 3, 7, 4]
  end

  it "Permuta posição de elementos no array." do
    lista = [2, 4, 5, 7, 8, 9, 1, 6]

    expect(ArrayUtils.new().troca(lista)).to eq [4, 2, 7, 5, 9, 8, 6, 1]
  end

  it "Permuta posição de elementos no array." do
    lista = [3, 5, 6, 7, 1, 9, 8, 10, 12, 1]

    expect(ArrayUtils.new().troca(lista)).to eq [5, 3, 7, 6, 9, 1, 10, 8, 1, 12]
  end

end
