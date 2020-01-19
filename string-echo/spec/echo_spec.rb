# frozen_string_literal: true

require 'spec_helper'

describe Echo do
  let(:echo) { Echo.new }
  it 'retorna a mensagem' do
    expect(echo.message('uma frase simples')).to eq 'uma frase simples'
  end

  it 'não retorna perguntas' do
    expect(echo.message('Tudo bem?')).to eq 'Só faço echo, não respondo perguntas.'
  end

  it 'não grita' do
    expect(echo.message('PORQUE VC REPETE TUDO!!!')).to eq 'Não faço echo de gritos.'
  end

  it 'mensagem deve conter algo' do
    expect(echo.message('')).to eq 'Nada?'
  end

  it 'mensagem deve conter algo' do
    expect(echo.message('   ')).to eq 'Nada?'
  end

  it 'não sabe contar' do
    expect(echo.message('1, 2, 3...')).to eq '1, 2, 3...'
  end

  it 'não retorna insultos' do
    expect(echo.message('QUE M%%$*&*!!, PARE DE REPETIR!!!')).to eq 'Não faço echo de gritos.'
  end

  it 'retorna mensagem pouco claras' do
    expect(echo.message('E ai?? Nada!')).to eq 'E ai?? Nada!'
  end
end
