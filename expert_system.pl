animal(cachorro)  :- is_true('tem pelo'), is_true('late').
animal(gato)  :- is_true('tem pelo'), is_true('mia').
animal(pato) :- is_true('tem penas'), is_true('quack').

raca(husky) :- animal(cachorro), is_true('grande').
raca(salsicha) :- animal(cachorro), \+is_true('grande').
raca(persa) :- animal(gato), is_true('pequeno'), \+is_true('peludo').
raca(mainecon) :- animal(gato), \+is_true('pequeno'), is_true('peludo').
raca(patosilvestre) :- animal(pato).

is_true(Q) :- format("~w?\n", [Q]), read(yes).
