# frozen_string_literal: true

class FileParser
  def to_integer(binary)
    binary.to_i(2)
  end

  def convert(path)
    File.read(path).split(/\n/).map { |binary| binary.to_i(2) }.sum
  end
end
