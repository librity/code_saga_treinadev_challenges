# frozen_string_literal: true

class Quadrados
  def initialize(num)
    @num = num
    resolve_primes
  end

  def resolve_primes
    File.exist?('lib/primes.csv') ? load_primes : generate_primes
  end

  def load_primes
    @primes_cache = File.read('lib/primes.csv').split(',').map(&:to_i)
    generate_primes if @primes_cache.length < @num
  end

  def generate_primes
    @primes_cache = first_primes(@num)
    File.write('lib/primes.csv', @primes_cache.join(','))
  end

  def get_primes(up_to)
    (2..up_to).select { |num| (2...num).all? { |div| (num % div).positive? } }
  end

  def first_primes(limit)
    primes = [2]; count = 3
    while primes.length < limit
      primes << count if (2...count).all? { |div| (count % div).positive? }
      count += 1
    end; primes
  end

  def quadrado_da_soma
    @primes_cache[0...@num].sum**2
  end

  def soma_dos_quadrados
    @primes_cache[0...@num].map { |v| v**2 }.sum
  end

  def diferenca
    quadrado_da_soma - soma_dos_quadrados
  end
end
