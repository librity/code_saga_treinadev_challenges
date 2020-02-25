# frozen_string_literal: true

class SortString
  def self.by_word_size(phrase)
    phrase.split(' ').sort_by(&:length).join(' ')
  end
end
