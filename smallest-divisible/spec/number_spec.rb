require 'spec_helper'

describe Number do
  it 'Retornar o menor número divisível para cada valor de 1 a 5 sem resto: 60.' do
    result = Number.new.smallest_divisible(1, 5)

    expect(result).to eq 60
  end

  it 'Retornar o menor número divisível para cada valor de 1 a 10 sem resto: 2520.' do
    result = Number.new.smallest_divisible(1, 10)

    expect(result).to eq 2520
  end

  it 'Retornar o menor número divisível para cada valor de 1 a 15 sem resto: 360360.' do
    result = Number.new.smallest_divisible(1, 15)

    expect(result).to eq 360360
  end
end
