% Carregar a base de dados
:- consult('base_dados.pl').

% Predicado para listar caminhos de start a end, evitando ciclos
caminho(X, Z, Caminho) :- caminho(X, Z, [X], Caminho).
caminho(X, X, CaminhoAcumulado, Caminho) :- reverse(CaminhoAcumulado, Caminho).
caminho(X, Z, CaminhoAcumulado, Caminho) :- 
    percurso(X, Y, _),
    \+ member(Y, CaminhoAcumulado),
    caminho(Y, Z, [Y | CaminhoAcumulado], Caminho).

% Calcula o custo total de um caminho
custoTotal([], 0).
custoTotal([X|R], Soma) :- 
    tratamento(X, CustoTratamentoIndividual),
    custoTotal(R, TotalCusto),
    Soma is TotalCusto + CustoTratamentoIndividual.

% Calcula o tempo total de um caminho
calcularTempo(_, [], 0).
calcularTempo(P1, [P2|R2], Soma) :- 
    percurso(P1, P2, TempoTratamentoIndividual),
    calcularTempo(P2, R2, TempoTotal),
    Soma is TempoTotal + TempoTratamentoIndividual.

% Avalia um caminho, somando custos e tempos
eval([_], 0).
eval([X, Y | Resto], C) :- 
    tratamento(X, CustoX),
    percurso(X, Y, TempoXY),
    eval([Y | Resto], CResto),
    C is CResto + CustoX + TempoXY.

% Gera uma nova opção de caminho
change(S, SNEW):- 
    findall(X, caminho(start, end, X), L),
    length(L, LE),
    random(0, LE, R),
    nth0(R, L, SNEW),
    dif(SNEW, S).

% Escolhe o melhor entre o caminho atual e o novo
best(Prob, Opt, S1, E1, S2, E2, SFinal, EFinal):- 
    eval(S2, E2),
    (   (Opt = max, E2 > E1; Opt = min, E2 < E1),
        random(Rand), Rand < Prob -> SFinal = S2, EFinal = E2
    ;   SFinal = S1, EFinal = E1
    ).

% Mostra o progresso
show(I, Verbose, S1, E1):- 
    Verbose > 0, 
    0 is I mod Verbose, 
    format('Iter: ~w, Caminho: ~w, Custo: ~w~n', [I, S1, E1]).

% Executa o hill climbing
hill_climbing(S1, E1, I, MaxIter, Verbose, Prob, Opt, SFinal):- 
    I >= MaxIter, !, SFinal = S1.
hill_climbing(S1, E1, I, MaxIter, Verbose, Prob, Opt, SFinal):- 
    change(S1, S2),
    best(Prob, Opt, S1, E1, S2, E2, SN, EN),
    show(I, Verbose, SN, EN),
    I1 is I + 1,
    hill_climbing(SN, EN, I1, MaxIter, Verbose, Prob, Opt, SFinal).

% Demo para testar
demo_hill_climbing :-
    caminho(start, end, CaminhoInicial),
    eval(CaminhoInicial, AvaliacaoInicial),
    hill_climbing(CaminhoInicial, AvaliacaoInicial, 0, 100, 10, 0.05, min, MelhorCaminho),
    custoTotal(MelhorCaminho, Custo),
    calcularTempo(start, MelhorCaminho, Tempo),
    write('Melhor Caminho: '), write(MelhorCaminho), nl,
    write('Custo: '), write(Custo), nl,
    write('Tempo: '), write(Tempo), nl.
