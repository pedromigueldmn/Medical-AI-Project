% base_conhecimento.pl

:- dynamic duracao/2.
:- dynamic custo/2.
:- [base_dados].

%-----------------------------------------------------------------------
% Geração de todos os caminhos possíveis de 'start' a 'end'
gerar_caminhos(start, end, Caminho) :-
    gerar_caminhos(start, end, [start], Caminho).
gerar_caminhos(end, end, Caminho, Caminho).
gerar_caminhos(TratamentoAtual, end, Visitados, Caminho) :-
    percurso(TratamentoAtual, ProximoTratamento, _),
    \+ member(ProximoTratamento, Visitados),
    gerar_caminhos(ProximoTratamento, end, [ProximoTratamento | Visitados], Caminho).

listaCaminhos(ListaCaminhos) :-
    findall(Caminho, gerar_caminhos(start, end, Caminho), ListaCaminhos).

%-----------------------------------------------------------------------
% CustoCaminho
custoTotal([], 0).
custoTotal([_], 0). % Não há custo para o último tratamento
custoTotal([TratamentoAtual, ProximoTratamento | Resto], Soma) :-
    percurso(TratamentoAtual, ProximoTratamento, CustoPercurso),
    tratamento(ProximoTratamento, CustoTratamento),
    custoTotal([ProximoTratamento | Resto], TotalCusto),
    Soma is CustoPercurso + CustoTratamento + TotalCusto.

guardarCustoTotal(Caminho) :-
    custoTotal(Caminho, Valor),
    assertz(custo(Caminho, Valor)).

gerarCustosCaminhos([]).
gerarCustosCaminhos([C1 | R1]) :-
    guardarCustoTotal(C1),
    gerarCustosCaminhos(R1).

%-----------------------------------------------------------------------
% TempoCaminho
calcularTempo(_, [], 0).
calcularTempo(P1, [P2 | R2], Soma) :-
    percurso(P2, P1, TempoTratamentoIndividual),
    calcularTempo(P2, R2, TempoTotal),
    Soma is TempoTratamentoIndividual + TempoTotal.

guardarTempo([]).
guardarTempo([P1 | R1]) :-
    calcularTempo(P1, R1, Valor),
    assertz(duracao([P1 | R1], Valor)).

gerarTemposCaminhos([]).
gerarTemposCaminhos([C1 | R1]) :-
    guardarTempo(C1),
    gerarTemposCaminhos(R1).

%-----------------------------------------------------------------------
% CaminhoMaisCurto
caminhoMaisCurto(Caminho, Tempo) :-
    retractall(duracao(_, _)),
    listaCaminhos(Lista),
    gerarTemposCaminhos(Lista),
    maisCurto(Caminho, Tempo).

maisCurto(Caminho, Tempo) :-
    duracao(Caminho, Tempo),
    \+ (duracao(_, Tempo1), Tempo > Tempo1).

%-----------------------------------------------------------------------
% CaminhoMaisLongo
caminhoMaisLongo(Caminho, Tempo) :-
    retractall(duracao(_, _)),
    listaCaminhos(Lista),
    gerarTemposCaminhos(Lista),
    maisLongo(Caminho, Tempo).

maisLongo(Caminho, Tempo) :-
    duracao(Caminho, Tempo),
    \+ (duracao(_, Tempo1), Tempo1 > Tempo).

%-----------------------------------------------------------------------
% CaminhoMaisBarato
caminhoMaisBarato(Caminho, Custo) :-
    retractall(custo(_, _)),
    listaCaminhos(Lista),
    gerarCustosCaminhos(Lista),
    maisBarato(Caminho, Custo).

maisBarato(Caminho, Custo) :-
    custo(Caminho, Custo),
    \+ (custo(_, Custo1), Custo > Custo1).

%-----------------------------------------------------------------------
% CaminhoMaisCaro
caminhoMaisCaro(Caminho, Custo) :-
    retractall(custo(_, _)),
    listaCaminhos(Lista),
    gerarCustosCaminhos(Lista),
    maisCaro(Caminho, Custo).

maisCaro(Caminho, Custo) :-
    custo(Caminho, Custo),
    \+ (custo(_, Custo1), Custo1 > Custo).
