# frozen_string_literal: true

class Word
  def anagrama?(word1, word2)
    word1.downcase.chars.sort.join == word2.downcase.chars.sort.join
  end
end
