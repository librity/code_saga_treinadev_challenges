# frozen_string_literal: true

def soma(primeiro_numero, segundo_numero)
  primeiro_numero + segundo_numero
end

def subtracao(primeiro_numero, segundo_numero)
  primeiro_numero - segundo_numero
end

def multiplicacao(primeiro_numero, segundo_numero)
  primeiro_numero * segundo_numero
end

def divisao(primeiro_numero, segundo_numero)
  return 'Opa! Zero como divisor' if segundo_numero.zero?

  primeiro_numero / segundo_numero
end
