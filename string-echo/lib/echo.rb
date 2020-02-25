# frozen_string_literal: true

# A class that conjures up skynet.
class Echo
  def message(echo)
    return echo if 'nada'.in? echo.downcase
    return 'Só faço echo, não respondo perguntas.' if '?'.in? echo
    return 'Não faço echo de gritos.' if '!'.in? echo
    return 'Nada?' if echo.blank?

    echo
  end
end
