% Definição dos arcos com tempos (dias) e custos (€)
arco(s0, s1, 3, 100).
arco(s0, s2, 4, 200).
arco(s0, s3, 2, 150).
arco(s1, s4, 1, 50).
arco(s1, s5, 3, 100).
arco(s2, s5, 2, 100).
arco(s3, s6, 1, 50).
arco(s4, s7, 2, 150).
arco(s5, s7, 1, 100).
arco(s6, s8, 2, 200).
arco(s7, s8, 1, 50).
arco(s8, s9, 3, 100).

% Atribuição de custos
custo(X, Y, C) :- arco(X, Y, _, C).

% Atribuição de tempos
tempo(X, Y, T) :- arco(X, Y, T, _).

% Avaliação de uma solução: soma de custos e tempos
eval([_], 0).
eval([D, O | X], C) :- 
    custo(O, D, C1), 
    tempo(O, D, T1), 
    eval([O | X], C2), 
    C is C1 + T1 + C2.

origem(s0).
destino(s9).

change(S, SNEW) :- 
    origem(O), 
    destino(D), 
    findall(X, caminho(O, D, X), L), 
    length(L, LE), 
    random(0, LE, R), 
    nth0(R, L, SNEW), 
    dif(SNEW, S).
change(S, SNEW) :- change(S, SNEW).

demo :- 
    origem(O), 
    destino(D), 
    caminho(O, D, C), 
    hill_climbing(C, [20, 1, 0, min], S), 
    write(S).

% Definição de caminho
caminho(X, Z, C) :- caminho(X, Z, [X], C).
caminho(X, X, Caminho, Caminho).
caminho(X, Z, Visitado, Caminho) :-
    arco(X, Y, _, _),
    \+ member(Y, Visitado),
    caminho(Y, Z, [Y | Visitado], Caminho).

% Função best
best(Prob, Opt, S1, E1, S2, E2, SR, ER) :-
    eval(S2, E2),
    best_opt(Prob, Opt, S1, E1, S2, E2, SR, ER).

best_opt(Prob, _, _, _, S2, E2, S2, E2) :- random(X), X < Prob.
best_opt(_, Opt, S1, E1, S2, E2, SR, ER) :-
    (Opt = max, max_list([E1, E2], ER); Opt = min, min_list([E1, E2], ER)),
    (ER == E1, SR = S1; ER == E2, SR = S2).

% Função show
show(final, Verbose, S1, E1, _, _) :- Verbose > 0, write('final:'), write(' S:'), write(S1), write(' E:'), write(E1), nl.
show(0, Verbose, S1, E1, _, _) :- Verbose > 0, write('init:'), write(' S0:'), write(S1), write(' E0:'), write(E1), nl.
show(I, Verbose, S1, E1, S2, E2) :- 0 is I mod Verbose, write('iter:'), write(I), write(' S1:'), write(S1), write(' E1:'), write(E1), write(' S2:'), write(S2), write(' E2:'), nl.
show(_, _, _, _, _, _).

% Função hill climbing
hill_climbing(S0, [Iter, Verbose, Prob, Opt], S1) :-
    eval(S0, E0),
    show(0, Verbose, S0, E0, _, _),
    hill_climbing(S0, E0, 0, Iter, Verbose, Prob, Opt, S1).

hill_climbing(S, _, Iter, Iter, _, _, _, S).
hill_climbing(S1, E1, I, Iter, Verbose, Prob, Opt, SFinal) :-
    change(S1, SNew),
    best(Prob, Opt, S1, E1, SNew, _, S2, E2),
    I1 is I + 1,
    show(I1, Verbose, S1, E1, S2, E2),
    hill_climbing(S2, E2, I1, Iter, Verbose, Prob, Opt, SFinal).
