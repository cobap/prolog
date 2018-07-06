%Definimos os nós do grafo
edge(1,2). edge(1,4). edge(1,3). edge(2,3). edge(2,5). edge(3,4). edge(3,5). edge(4,5).

%Definimos vertices vizinhos caso estes tenha uma "aresta" em comum
connected(X,Y) :- edge(X,Y) ; edge(Y,X).

%Metodo recursivo para calcular o caminho entre A e B
path(A,B,Path) :-
  %O caminho de A até B | Guardamos todos as arestas de A e uma lista ([]) e Q como nossa fila de testes
  travel(A,B,[A],Q),
  %Apos calcularmos a distancia de A até B, invertemos a fila Q em Path
  reverse(Q,Path).

%Definimos travel de A, B
%Criamos o P que representa os nos restante até B. Também teremos a lista B | P que separada a cauda da lista de B
travel(A,B,P,[B|P]) :-
  %Retornamos caso existe uma conexão entre A e B
  connected(A,B).

%Mesmo metodo travel porem definido como nó visitado e o caminho atual
travel(A,B,Visited,Path) :-
  %Verificamos se existe conexão entre A e C
  connected(A,C),
  %Verificamos se C é diferente de B | simbolo \== representa diferença
  C \== B,
  %Vemos se C não foi visitado ainda, através da sintaxe do "member" e do NOT (\+)
  \+member(C,Visited),
  %Por ultimo, caso nao tenha sido visitado, calculamos a viagem de C até B tirando C da lista de visitados e mantando o path
  travel(C,B,[C|Visited],Path).
