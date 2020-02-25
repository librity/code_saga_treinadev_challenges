# frozen_string_literal: true

class StringUtils
  def palindromo?(phrase)
    phrase = phrase.downcase.delete(' ').split('')
    phrase.join == phrase.map.with_index { |_v, i| phrase[- i - 1] }.join
  end
end
