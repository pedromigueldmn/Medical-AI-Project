% Carregar a base de dados
:- consult('base_dados.pl').

% Definir os predicados caminho/4 e caminho/3
caminho(X, Z, Caminho) :- caminho(X, Z, [X], Caminho).
caminho(X, X, CaminhoAcumulado, Caminho) :- reverse(CaminhoAcumulado, Caminho).
caminho(X, Z, CaminhoAcumulado, Caminho) :- 
    percurso(X, Y, _), 
    \+ member(Y, CaminhoAcumulado), 
    caminho(Y, Z, [Y | CaminhoAcumulado], Caminho).

% Predicado para calcular o custo total de um caminho
custoTotal([], 0).
custoTotal([X|R], Soma) :- 
    tratamento(X, CustoTratamentoIndividual), 
    custoTotal(R, TotalCusto), 
    Soma is CustoTratamentoIndividual + TotalCusto.

% Predicado para calcular o tempo total de um caminho
calcularTempo(_, [], 0).
calcularTempo(P1, [P2|R2], Soma) :- 
    percurso(P1, P2, TempoTratamentoIndividual), 
    calcularTempo(P2, R2, TempoTotal), 
    Soma is TempoTratamentoIndividual + TempoTotal.

% Predicado eval/2 para avaliar a solução baseada na vantagem (custo + tempo)
eval([_], 0).
eval([X, Y | Resto], C) :- 
    percurso(X, Y, C1), 
    eval([Y | Resto], C2), 
    C is C1 + C2.

% Predicado change/2 para gerar uma nova solução a partir da solução atual
change(S, SNEW):- 
    findall(X, caminho(start, end, X), L), 
    length(L, LE), 
    random(0, LE, R), 
    nth0(R, L, SNEW), 
    dif(SNEW, S).

% Funções auxiliares do Hill Climbing
best(Prob, Opt, S1, E1, S2, E2, SR, ER):- 
    eval(S2, E2), 
    best_opt(Prob, Opt, S1, E1, S2, E2, SR, ER).

best_opt(Prob, _, _, _, S2, E2, S2, E2):- 
    random(X), 
    X < Prob.

best_opt(_, Opt, S1, E1, S2, E2, SR, ER):- 
    ((Opt = max, max_list([E1, E2], ER)); (Opt = min, min_list([E1, E2], ER))), 
    ((ER =:= E1, SR = S1); (ER =:= E2, SR = S2)).

% Mostrar evolução do algoritmo
show(final, Verbose, S1, E1, _, _):- 
    Verbose > 0, 
    write('final:'), write(' S:'), write(S1), write(' E:'), write(E1), nl, !.
show(0, Verbose, S1, E1, _, _):- 
    Verbose > 0, 
    write('init:'), write(' S0:'), write(S1), write(' E0:'), write(E1), nl, !.
show(I, Verbose, S1, E1, S2, E2):- 
    0 is I mod Verbose, 
    write('iter:'), write(I), write(' S1:'), write(S1), 
    write(' E1:'), write(E1), write(' S2:'), write(S2), 
    write(' E2:'), write(E2), nl, !.
show(_, _, _, _, _, _).

% Hill Climbing
hill_climbing(S0, [Iter, Verbose, Prob, Opt], S1):- 
    eval(S0, E0), 
    show(0, Verbose, S0, E0, _, _), 
    hill_climbing(S0, E0, 0, Iter, Verbose, Prob, Opt, S1).

hill_climbing(S, _, Iter, Iter, _, _, _, S):- !.
hill_climbing(S1, E1, I, Iter, Verbose, Prob, Opt, SFinal):- 
    change(S1, SNew), 
    best(Prob, Opt, S1, E1, SNew, _, S2, E2), 
    I1 is I + 1, 
    show(I1, Verbose, S1, E1, S2, E2), 
    hill_climbing(S2, E2, I1, Iter, Verbose, Prob, Opt, SFinal), !.

% Exemplo de uso do Hill Climbing
demo_hill_climbing :- 
    caminho(start, end, CaminhoInicial), 
    hill_climbing(CaminhoInicial, [100, 1, 0, min], MelhorCaminho), 
    custoTotal(MelhorCaminho, Custo), 
    calcularTempo(start, MelhorCaminho, Tempo), 
    Vantagem is Custo + Tempo, 
    write('Melhor Caminho: '), write(MelhorCaminho), nl, 
    write('Custo: '), write(Custo), nl, 
    write('Tempo: '), write(Tempo), nl, 
    write('Vantagem: '), write(Vantagem), nl, !.




% PARA TESTARES, COLOCA O SEGUINTE NO TERMINAL: "  demo_hill_climbing.  "