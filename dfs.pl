edge(g,h).
edge(g,d).
edge(e,d).
edge(h,f).
edge(e,f).
edge(a,e).
edge(a,b).
edge(b,f).
edge(b,c).
edge(f,c).

search(X, X, T).
search(X, Y, T) :- (edge(X, Z); edge(Z, X)), not(member(Z, T)), search(Z, Y, [Z|T]).
member(X, [X|_]) :- !.
member(X, [_|Y]) :- member(X, Y).
