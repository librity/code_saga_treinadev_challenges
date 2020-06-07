# frozen_string_literal: true

class FileParser
  def to_binary_file(numbers)
    parsed_numbers = numbers.split(';').map(&:to_i)
    binary_numbers = parsed_numbers.map { |num| num.to_s(2) }.join("\n")

    File.write('data/data.txt', binary_numbers)
  end
end
