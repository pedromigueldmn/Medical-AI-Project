% Definição dos arcos e tempos (dias/sessões) baseados na tabela fornecida
arco(s1, s2, 2).
arco(s1, s3, 3).
arco(s1, s4, 4).
arco(s1, s5, 5).
arco(s1, s6, 2).
arco(s2, s6, 2).
arco(s2, s7, 6).
arco(s2, s0, 6).
arco(s2, s8, 8).
arco(s3, s6, 2).
arco(s3, s7, 6).
arco(s3, s9, 12).
arco(s3, s15, 15).
arco(s4, s6, 2).
arco(s4, s11, 10).
arco(s4, s12, 30).
arco(s4, s0, 30).
arco(s4, s13, 8).
arco(s4, s9, 30).
arco(s5, s6, 2).
arco(s5, s0, 8).
arco(s5, s13, 8).
arco(s6, s20, 20).
arco(s6, s0, 20).
arco(s7, s10, 3).
arco(s7, s17, 90).
arco(s8, s17, 90).
arco(s9, s0, 30).
arco(s9, s17, 90).
arco(s10, s0, 3).
arco(s11, s0, 10).
arco(s12, s18, 3).
arco(s12, s0, 10).
arco(s13, s0, 8).
arco(s15, s0, 15).
arco(s17, s18, 3).
arco(s18, s0, 6).

% Definição dos custos (€) baseados na tabela fornecida
custo(s1, 0).
custo(s2, 5).
custo(s3, 4).
custo(s4, 2).
custo(s5, 8).
custo(s6, 100).
custo(s7, 150).
custo(s8, 200).
custo(s9, 0).
custo(s10, 1200).
custo(s11, 50).
custo(s12, 34).
custo(s13, 25).
custo(s15, 90).
custo(s17, 80).
custo(s18, 75).
custo(s20, 15).

% Função para calcular o custo total de um caminho
eval([_], 0).
eval([D, O | X], C) :-
    custo(O, C1),
    eval([O | X], C2),
    C is C1 + C2.

% Definir a origem e o destino
origem(s1).       %dizer s1 e dizer start é a mesma coisa
destino(s0).

% Função para encontrar novos caminhos
change(S, SNEW) :-
    origem(O), destino(D),
    findall(X, caminho(O, D, X), L),
    length(L, LE), 
    random(0, LE, R), 
    nth0(R, L, SNEW),
    dif(SNEW, S).
change(S, SNEW) :-
    change(S, SNEW).

% Demonstração do algoritmo
demo :-
    origem(O), destino(D), caminho(O, D, C),
    hill_climbing(C, [20, 1, 0, min], S), write(S).

% Definição dos caminhos
caminho(X, Z, C) :- caminho(X, Z, [X], C).
caminho(X, X, Caminho, Caminho).
caminho(X, Z, Visitado, Caminho) :-
    arco(X, Y, _),
    \+ member(Y, Visitado),
    caminho(Y, Z, [Y | Visitado], Caminho).

% Função para determinar a melhor solução
best(Prob, Opt, S1, E1, S2, E2, SR, ER) :-
    eval(S2, E2),
    best_opt(Prob, Opt, S1, E1, S2, E2, SR, ER).

best_opt(Prob, _, _, _, S2, E2, S2, E2) :-
    random(X), 
    X < Prob.

best_opt(_, Opt, S1, E1, S2, E2, SR, ER) :-
    ((Opt = max, max_list([E1, E2], ER)); (Opt = min, min_list([E1, E2], ER))),
    ((ER == E1, SR = S1); (ER == E2, SR = S2)).

% Mostrar evolução
show(final, Verbose, S1, E1, _, _) :-
    Verbose > 0,
    write('final:'), write(' S:'), write(S1), write(' E:'), write(E1), nl.
show(0, Verbose, S1, E1, _, _) :-
    Verbose > 0,
    write('init:'), write(' S0:'), write(S1), write(' E0:'), write(E1), nl.
show(I, Verbose, S1, E1, S2, E2) :-
    0 is I mod Verbose,
    write('iter:'), write(I), write(' S1:'), write(S1), write(' E1:'),
    write(E1), write(' S2:'), write(S2), write(' E2:'), write(E2), nl.
show(_, _, _, _, _, _).

% Algoritmo de Hill Climbing
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
