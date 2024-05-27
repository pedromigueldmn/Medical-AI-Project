:- dynamic duracao/2.
:- dynamic custo/2.
:- [base_dados].

% CustoCaminho
custoTotal([], 0).
custoTotal([X|R], Soma) :- 
    tratamento(X, CustoTratamentoIndividual), 
    custoTotal(R, TotalCusto), 
    Soma is CustoTratamentoIndividual + TotalCusto.

guardarcustoTotal(Caminho) :- 
    custoTotal(Caminho, Valor), 
    assertz(custo(Caminho, Valor)).

gerarCustosCaminhos([]).
gerarCustosCaminhos([C1|R1]) :- 
    guardarcustoTotal(C1), 
    gerarCustosCaminhos(R1).

% TempoCaminho
calcularTempo(_, [], 0).
calcularTempo(P1, [P2|R2], Soma) :- 
    percurso(P1, P2, TempoTratamentoIndividual), 
    calcularTempo(P2, R2, TempoTotal), 
    Soma is TempoTratamentoIndividual + TempoTotal.

guardarTempo(Caminho) :- 
    [P1|R1] = Caminho,
    calcularTempo(P1, R1, Valor), 
    assertz(duracao(Caminho, Valor)).

gerarTemposCaminhos([]).
gerarTemposCaminhos([C1|R1]) :- 
    guardarTempo(C1), 
    gerarTemposCaminhos(R1).

distanciaCaminho(Caminho, Valor) :-  
    [P1|R1] = Caminho,
    calcularTempo(P1, R1, Valor).

% Definindo o predicado caminho/3 para listar caminhos de start a end
caminho(Start, End, Caminho) :- 
    caminho(Start, End, [Start], Caminho).

caminho(X, X, CaminhoAcumulado, Caminho) :- 
    reverse(CaminhoAcumulado, Caminho).

caminho(X, Z, CaminhoAcumulado, Caminho) :- 
    percurso(X, Y, _), 
    \+ member(Y, CaminhoAcumulado), 
    caminho(Y, Z, [Y | CaminhoAcumulado], Caminho).

% Predicado para listar todos os caminhos de Start para End
listaCaminhos(Start, End, Lista) :- 
    findall(Caminho, caminho(Start, End, Caminho), Lista).

% QuestõesDoUtilizador

% CaminhoMaisCurto
caminhoMaisCurto(X, Y, Caminho, Tempo) :- 
    retractall(duracao(_,_)), 
    listaCaminhos(X, Y, Lista), 
    gerarTemposCaminhos(Lista), 
    maisCurto(Caminho, Tempo).

maisCurto(Caminho, Tempo) :- 
    duracao(Caminho, Tempo), 
    \+ (duracao(_, Tempo1), Tempo > Tempo1).

% CaminhoMaisLongo
caminhoMaisLongo(X, Y, Caminho, Tempo) :- 
    retractall(duracao(_,_)), 
    listaCaminhos(X, Y, Lista), 
    gerarTemposCaminhos(Lista), 
    maisLongo(Caminho, Tempo).

maisLongo(Caminho, Tempo) :- 
    duracao(Caminho, Tempo), 
    \+ (duracao(_, Tempo1), Tempo1 > Tempo).

% CaminhoMaisBarato
caminhoMaisBarato(X, Y, Caminho, Custo) :- 
    retractall(custo(_,_)), 
    listaCaminhos(X, Y, Lista), 
    gerarCustosCaminhos(Lista), 
    maisBarato(Caminho, Custo).

maisBarato(Caminho, Custo) :- 
    custo(Caminho, Custo), 
    \+ (custo(_, Custo1), Custo > Custo1).

% CaminhoMaisCaro
caminhoMaisCaro(X, Y, Caminho, Custo) :- 
    retractall(custo(_,_)), 
    listaCaminhos(X, Y, Lista), 
    gerarCustosCaminhos(Lista), 
    maisCaro(Caminho, Custo).

maisCaro(Caminho, Custo) :- 
    custo(Caminho, Custo), 
    \+ (custo(_, Custo1), Custo1 > Custo).


% CaminhoMaisVantajoso
caminhoMaisVantajoso(X, Y, Caminho, Vantagem, Tempo, Custo) :- 
    retractall(duracao(_,_)), 
    retractall(custo(_,_)), 
    listaCaminhos(X, Y, Lista), 
    gerarTemposCaminhos(Lista), 
    gerarCustosCaminhos(Lista), 
    maisVantajoso(Caminho, Vantagem, Tempo, Custo).

maisVantajoso(Caminho, Vantagem, Tempo, Custo) :- 
    duracao(Caminho, Tempo), 
    custo(Caminho, Custo), 
    valorVantagem(Caminho, Vantagem), 
    \+ (duracao(_, _), custo(_, _), 
        valorVantagem(_, Vantagem1), 
        Vantagem1 < Vantagem).

valorVantagem(Caminho, Vantagem) :- 
    duracao(Caminho, Tempo), 
    custo(Caminho, Custo), 
    Vantagem is Tempo + Custo.

% Utilize o predicado caminhoMaisVantajoso para encontrar o caminho mais vantajoso