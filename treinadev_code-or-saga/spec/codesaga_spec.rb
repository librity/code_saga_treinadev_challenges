require 'spec_helper'

describe CodeSaga do
  it 'números divisiveis por 3 trocar por Code até o valor 3' do
    expect(CodeSaga.new.code_or_saga(3)).to eq [1, 2, 'Code']
  end

  it 'números divisiveis por 5 trocar por Saga até o valor 5' do
    expect(CodeSaga.new.code_or_saga(5)).to eq [1, 2, 'Code', 4, 'Saga']
  end

  it 'Code e Saga até 10' do
    expect(CodeSaga.new.code_or_saga(10)).to eq(
      [1, 2, 'Code', 4, 'Saga', 'Code', 7, 8, 'Code', 'Saga']
    )
  end

  it 'Code e Saga até 100' do
    expect(CodeSaga.new.code_or_saga(100)).to eq(
      [1, 2, 'Code', 4, 'Saga', 'Code', 7, 8, 'Code', 'Saga', 11, 'Code',
       13, 14, 'CodeSaga', 16, 17, 'Code', 19, 'Saga', 'Code', 22, 23, 'Code',
       'Saga', 26, 'Code', 28, 29, 'CodeSaga', 31, 32, 'Code', 34, 'Saga',
       'Code', 37, 38, 'Code', 'Saga', 41, 'Code', 43, 44, 'CodeSaga', 46, 47,
       'Code', 49, 'Saga', 'Code', 52, 53, 'Code', 'Saga', 56, 'Code', 58, 59,
       'CodeSaga', 61, 62, 'Code', 64, 'Saga', 'Code', 67, 68, 'Code', 'Saga',
       71, 'Code', 73, 74, 'CodeSaga', 76, 77, 'Code', 79, 'Saga', 'Code', 82,
       83, 'Code', 'Saga', 86, 'Code', 88, 89, 'CodeSaga', 91, 92, 'Code', 94,
       'Saga', 'Code', 97, 98, 'Code', 'Saga']
    )
  end
end
