%Caso base - soma de 1 é 1
soma_numeros(1, 1).

%Definimos a função recursiva - um número e o resultado de todos os outros anteriores somados
soma_numeros(NUMERO, RESULTADO) :-
  %Verificamos se o numero é maior que 0
  NUMERO > 0,
  %Definimos que o proximo numero, é o numero menos 1
  NUMERO1 is NUMERO-1,
  %Fazemos a recursao para somar os numeros anterior de NUMERO na variável RESULTADO_TEMP
  soma_numeros(NUMERO1, RESULTADO_TEMP),
  %Definimos o retorno. Nosso RESULTADO será a soma de NUMERO + RESULTADO_TEMP (da recursao)
  RESULTADO is NUMERO + RESULTADO_TEMP.
