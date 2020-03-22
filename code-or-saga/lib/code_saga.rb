# frozen_string_literal: true

class CodeSaga
  def code_or_saga(up_to)
    (1..up_to).map do |num|
      next 'CodeSaga' if (num % 15).zero?
      next 'Saga' if (num % 5).zero?
      next 'Code' if (num % 3).zero?

      num
    end
  end
end
