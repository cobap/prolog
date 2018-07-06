%Define caso base de fibonacci de 0 = 1 e previne que ocorra o backtracking
fib(0, 1) :- !.

%Define caso base de fibonacci de 1 = 1 e previne que ocorra o backtracking
fib(1, 1) :- !.

%Define fibonacci de N como Resultado
fib(N, Resultado) :-

  %Definimos N1 como N-1
  N1 is N - 1,

  %Realizamos o mesmo procedimento pro N2
  N2 is N - 2,

  %Calculamos\ a recursão do fibonacci de N1 para o resultado n-1
  fib(N1, ResultadoN1),

  %Calculamos a recursão do fibonacci de N2 para o results2 n-2
  fib(N2, ResultadoN2),

  %Retornamos o resultado como a recursão da esquerda (resultado1) com a recursão da direita (resultado2)
  Resultado is ResultadoN1 + ResultadoN2.
