require 'spec_helper'

describe StringUtils do
  before do
    allow_any_instance_of(String).to receive(:reverse).and_raise("Uso do reverse foi bloqueado.")
  end

  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do

    expect(StringUtils.new().palindromo?('anilina')).to eq true
  end

  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do

    expect(StringUtils.new().palindromo?('arara')).to eq true
  end

  it "Checa se string corresponde a um palíndromo e retorna: falso." do

    expect(StringUtils.new().palindromo?('palindromo')).to eq false
  end
  
  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do
    
    expect(StringUtils.new().palindromo?('Roma me tem amor')).to eq true
  end
  
  it "Checa se string corresponde a um palíndromo e retorna: verdadeiro." do
    
    expect(StringUtils.new().palindromo?('O lobo ama o bolo')).to eq true
  end

  it "Checa se string corresponde a um palíndromo e retorna: falso." do

    expect(StringUtils.new().palindromo?('Luz azaul')).to eq false
  end
end
