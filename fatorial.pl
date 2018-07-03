% http://www.swi-prolog.org/
% https://www.ime.usp.br/~slago/slago-prolog.pdf
% https://repositorium.sdum.uminho.pt/bitstream/1822/7780/1/exercicios-sbc.pdf
% http://silveiraneto.net/2007/08/29/exemplos-de-prolog/
% https://en.wikipedia.org/wiki/Prolog
% http://lpn.swi-prolog.org/lpnpage.php?pagetype=html&pageid=lpn-htmlch1
% https://pt.wikipedia.org/wiki/Fatorial
% https://pt.wikipedia.org/wiki/Alain_Colmerauer
% https://rodrigorgs.github.io/aulas/mata56/aula03-prolog-recursao


%Define fatorial de 0 como 1
fatorial(0,1).
%Podemos também definir fatorial de 1 como 1
fatorial(1,1).

%Cria metodo de fatorial | Recebe um numero e retorna o F (fatorial de N)
fatorial(N,F) :-
  %Caso N > 0 seja verdade
  N>0,
  %Entao N1 será definido como N-1 (que será nossa nova variável da recursão)
  N1 is N-1,
  %Entao roda o fatorial de N-1 e F-1 (F-1 representa nossa nova variável de resultado)
  fatorial(N1,F1),
  %Entao F será N * F-1 que sairá como resultado da linha acima
  F is N * F1.
