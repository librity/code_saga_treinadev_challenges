# frozen_string_literal: true

# A class that finds the largest and smallest words of a string
class Word
  def longest(phrase)
    phrase.split(' ').max_by(&:length)
  end

  def shortest(phrase)
    phrase.split(' ').min_by(&:length)
  end
end
