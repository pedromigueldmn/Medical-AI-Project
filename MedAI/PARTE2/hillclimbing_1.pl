% Carregar a base de dados fictícia com arcos e custos
:- initialization(main).

% Definições dos arcos com custos associados - falta continuar
arco(s0, s1, 480).
arco(s0, s2, 520).
arco(s1, s2, 150).
arco(s1, s3, 200).
arco(s2, s3, 320).


% Custo para se mover entre dois pontos, se não existe ligação direta, custo é considerado infinito
custo(X, Y, Custo) :- arco(X, Y, Custo); arco(Y, X, Custo).
custo(_, _, inf).

% Caminho de Origem para Destino, evitando ciclos
caminho(Origem, Destino, Caminho) :-
    caminho(Origem, Destino, [Origem], Caminho).

caminho(Origem, Origem, _, [Origem]).
caminho(Origem, Destino, Visitados, [Origem | Caminho]) :-
    arco(Origem, Proximo, _),
    \+ member(Proximo, Visitados),
    caminho(Proximo, Destino, [Proximo | Visitados], Caminho).

% Avaliação do custo de um caminho
eval([_], 0).
eval([Origem, Destino | Resto], CustoTotal) :-
    custo(Origem, Destino, Custo),
    eval([Destino | Resto], CustoResto),
    CustoTotal is Custo + CustoResto.

% Gerar uma nova solução a partir da atual
change(SolucaoAtual, NovaSolucao) :-
    findall(X, caminho(s0, s18, X), SolucoesPossiveis),
    length(SolucoesPossiveis, NumeroSolucoes),
    random(0, NumeroSolucoes, Index),
    nth0(Index, SolucoesPossiveis, NovaSolucao),
    dif(NovaSolucao, SolucaoAtual).

% Hill climbing implementation
hill_climbing(SolucaoAtual, [Iteracoes, Verbosidade, Probabilidade, Opt], SolucaoFinal) :-
    eval(SolucaoAtual, AvaliacaoAtual),
    hill_climbing(SolucaoAtual, AvaliacaoAtual, 0, Iteracoes, Verbosidade, Probabilidade, Opt, SolucaoFinal).

hill_climbing(Solucao, Avaliacao, Iteracoes, Iteracoes, _, _, _, Solucao) :- 
    format('Final Solution: ~w with Cost: ~w~n', [Solucao, Avaliacao]), !.

hill_climbing(SolucaoAtual, AvaliacaoAtual, I, MaxIter, Verbosidade, Probabilidade, Opt, SolucaoFinal) :-
    change(SolucaoAtual, NovaSolucao),
    eval(NovaSolucao, NovaAvaliacao),
    (   melhor(Opcao, Opt, SolucaoAtual, AvaliacaoAtual, NovaSolucao, NovaAvaliacao, SolucaoEscolhida, AvaliacaoEscolhida),
        show(I, Verbosidade, SolucaoAtual, AvaliacaoAtual, NovaSolucao, NovaAvaliacao),
        I1 is I + 1,
        hill_climbing(SolucaoEscolhida, AvaliacaoEscolhida, I1, MaxIter, Verbosidade, Probabilidade, Opt, SolucaoFinal)
    ).

% Decidir qual solução é melhor
melhor(NovaSolucao, min, _, AvaliacaoAtual, NovaSolucao, NovaAvaliacao, NovaSolucao, NovaAvaliacao) :-
    NovaAvaliacao < AvaliacaoAtual, !.

melhor(SolucaoAtual, min, SolucaoAtual, AvaliacaoAtual, _, _, SolucaoAtual, AvaliacaoAtual).

% Exibir a evolução do processo
show(Iteracao, Verbosidade, S1, E1, S2, E2) :-
    Verbosidade > 0,
    Iteracao mod Verbosidade =:= 0,
    format('Iteração: ~d~nSolução Atual: ~w, Custo: ~w~nNova Solução: ~w, Novo Custo: ~w~n', [Iteracao, S1, E1, S2, E2]).

% Ponto de entrada para o programa
main :-
    demo,
    halt.

demo :-
    caminho(s0, s18, CaminhoInicial),
    hill_climbing(CaminhoInicial, [100, 1, 0.05, min], _),
    halt.
