# frozen_string_literal: true

class Fibonacci
  def element(index)
    index <= 1 ? index : element(index - 1) + element(index - 2)
  end

  def elements(up_to)
    (0..up_to).map { |v| element v }
  end
end
