%Caso base: Para uma peça (N=1) movimentaremos X para Y. O _ pode ser considera um caracter que não deve ser utilizado
move(1,X,Y,_).

%Definimos N como numero de discos, e X, Y e Z como nossas posições disponíveis
move(N,X,Y,Z) :-
  %Verificamos um N > 1
  N>1,
  %Definimos a recursão como M sendo N-1
  M is N-1,
  %Chamamos metodo recursivo de Hanoi para N-1 para lado esquerdo Z <-> Y
  move(M,X,Z,Y),
  %Chamamos o mesmo metodo de movimentacao porem para Y <-> Z
  move(M,Z,Y,X).
