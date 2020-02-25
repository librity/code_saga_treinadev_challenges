# frozen_string_literal: true

class Telefone
  def teclar(sequence)
    cipher = ('a'..'o').each_slice(3).to_a << ('p'..'s').to_a
    cipher << ('t'..'v').to_a << ('w'..'z').to_a
    sequence.split(' ').map do |word|
      next ' ' if word == '0'

      cipher[word[0].to_i - 2][word.length - 1]
    end.join
  end
end
