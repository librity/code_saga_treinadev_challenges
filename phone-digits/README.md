# Escrevendo com teclado telefônico?
## Decodificando a lógica dos teclados de telefones

Talvez uma prática pouco comum atualmente seja utilizar o teclado numérico de
telefones para escrever mensagens de texto. Se você nunca reparou, pode pegar um
telefone fixo ou abrir o teclado numérico do seu *smartphone* e observar que
junto dos números aparecem conjuntos de letras. Veja o exemplo abaixo:


Com esse teclado, os seres humanos do século passado (também chamados de
Australopitecus) conseguiam enviar mensagens de texto pelos telefones celulares.
Para escrever a letra 'c' por exemplo, era necessário apertar o número 2 três
vezes. Para escrever 'bolo', por exemplo, a seguinte sequência de números era
pressionada: '22666555666'. Se você precisasse escrever duas letras seguidas que
estavam na mesma tecla, precisava esperar alguns segundos para habilitar a letra
seguinte.

Neste desafio você deve implementar um código que recebe uma *string* de números
e retorna o texto que ele escreveria se fosse aplicado no teclado numérico de um
telefone. Note que o número 0 (zero) insere um espaço em branco no texto e,
neste desafio, vamos usar um espaço em branco para representar o tempo de espera
para usar duas letras que estão na mesma tecla. Por exemplo, para escrever 'ba'
a sequência de números será '22 2'.
