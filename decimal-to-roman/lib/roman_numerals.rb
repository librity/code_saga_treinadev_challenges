# frozen_string_literal: false

CIPHER = { 1000 => 'M', 900 => 'CM', 500 => 'D', 400 => 'CD', 100 => 'C',
           90 => 'XC', 50 => 'L', 40 => 'XL', 10 => 'X', 9 => 'IX', 5 => 'V',
           4 => 'IV', 1 => 'I' }.freeze

class RomanNumerals
  def from_decimal(number)
    CIPHER.map do |arab_key, roman_value|
      whole_part, number = number.divmod(arab_key)
      roman_value * whole_part
    end.join
  end
end
