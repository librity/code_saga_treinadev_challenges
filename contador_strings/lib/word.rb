# frozen_string_literal: true

# A class that handles srings and counts letters.
class Word
  def vowels_count(frase)
    frase.count('AaÃãEeêIiOoUu')
  end

  def consonants_count(frase)
    frase.length - frase.count('AaÃãEeêIiOoUu ')
  end
end
