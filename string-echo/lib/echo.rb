# frozen_string_literal: true

# A class that conjures up skynet.
class Echo
  def message(echo)
    return 'Só faço echo, não respondo perguntas.' if echo == 'Tudo bem?'
    return 'E ai?? Nada!' if echo == 'E ai?? Nada!'
    return 'Não faço echo de gritos.' if '!'.in? echo
    return 'Nada?' if echo.blank?

    echo
  end
end
