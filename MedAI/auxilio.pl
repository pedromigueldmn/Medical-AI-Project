:- dynamic duracao/2 .
:- dynamic custo/2 .
:-[base_dados].

%CustoCaminho
custoTotal([],0).
custoTotal([X|R],Soma) :- tratamento(X,CustoTratamentoIndividual), 
custoTotal(R,TotalCusto), Soma is CustoTratamentoIndividual + TotalCusto.

guardarcustoTotal(Caminho):- custoTotal(Caminho, Valor), 
assertz(custo(Caminho, Valor)).

gerarCustosCaminhos([]).
gerarCustosCaminhos([C1|R1]):- guardarcustoTotal(C1), gerarCustosCaminhos(R1).

%TempoCaminho
calcularTempo(_,[],0).
calcularTempo(P1,[P2|R2], Soma):- percurso(P2,P1,TempoTratamentoIndividual), 
calcularTempo(P2, R2, TempoTotal), Soma is TempoTratamentoIndividual + TempoTotal.

guardarTempo([]).
guardarTempo([P1|R1]):- calcularTempo(P1,R1,Valor), assertz(duracao([P1|R1], Valor)).

gerarTemposCaminhos([]).
gerarTemposCaminhos([C1|R1]):- guardarTempo(C1), gerarTemposCaminhos(R1).

distanciaCaminho([P1|R1], Valor):-  calcularTempo(P1,R1,Valor).

% Geração de todos os caminhos possíveis de 'start' a 'end'
gerar_caminhos(start, end, Caminho) :-
    gerar_caminhos(start, end, [start], Caminho).
gerar_caminhos(end, end, Caminho, Caminho).
gerar_caminhos(TratamentoAtual, end, Visitados, Caminho) :-
    percurso(TratamentoAtual, ProximoTratamento, _),
    \+ member(ProximoTratamento, Visitados),
    gerar_caminhos(ProximoTratamento, end, [ProximoTratamento | Visitados], Caminho).

listaCaminhos(start, ListaCaminhos) :-
    findall(Caminho, gerar_caminhos(start, end, Caminho), ListaCaminhos).

%QuestõesDoUtilizador

%CaminhoMaisCurto
caminhoMaisCurto(X,Y,Caminho):- retractall(duracao(_,_)), listaCaminhos(X,Y,Lista), 
gerarTemposCaminhos(Lista), maisCurto(Caminho).

maisCurto(Caminho):- duracao(Caminho, V), \+ (duracao(_, V1), V > V1).


%CaminhoMaisLongo
caminhoMaisLongo(X,Y,Caminho):- retractall(duracao(_,_)), listaCaminhos(X,Y,Lista), 
gerarTemposCaminhos(Lista), maisLongo(Caminho).

maisLongo(Caminho):- duracao(Caminho, V), \+ (duracao(_, V1), V1 > V).


%CaminhoMaisBarato
caminhoMaisBarato(X,Y,Caminho):- retractall(custo(_,_)), listaCaminhos(X,Y,Lista), 
gerarCustosCaminhos(Lista), maisBarato(Caminho).

maisBarato(Caminho):- custo(Caminho, V), \+ (custo(_, V1), V > V1).

%CaminhoMaisCaro
caminhoMaisCaro(X,Y,Caminho, V):- retractall(custo(_,_)), listaCaminhos(X,Y,Lista), 
gerarCustosCaminhos(Lista), maisCaro(Caminho, V).

maisCaro(Caminho, V):- custo(Caminho, V), \+ (custo(_, V1), V1 > V).
