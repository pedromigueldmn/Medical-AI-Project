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


caminho(X, Z, Caminho) :-
    X = start,
    Z = end,
    caminho(X, Z, [X], [], Caminho).

caminho(X, X, _, Caminho, Caminho) :-
    custoTotal(Caminho, Soma),
    Soma =< 100000000.

caminho(X, Z, TratamentosFeitos, Visitados, Caminho) :-
    percurso(X, Y, _),
    \+ member(Y, Visitados),
    caminho(Y, Z, [Y | TratamentosFeitos], [Y | Visitados], Caminho).



%GerarListaCaminhos
listaCaminhos(X,Y,Lista):- findall(C,caminho(X,Y,C),Lista).

%QuestõesDoUtilizador

%CaminhoMaisCurto
caminhoMaisCurto(X,Y,Caminho,Tempo):- retractall(duracao(_,_)), listaCaminhos(X,Y,Lista), 
gerarTemposCaminhos(Lista), maisCurto(Caminho,Tempo).

maisCurto(Caminho,Tempo):- duracao(Caminho, Tempo), \+ (duracao(_, Tempo1), Tempo > Tempo1).


%CaminhoMaisLongo
caminhoMaisLongo(X,Y,Caminho,Tempo):- retractall(duracao(_,_)), listaCaminhos(X,Y,Lista), 
gerarTemposCaminhos(Lista), maisLongo(Caminho,Tempo).

maisLongo(Caminho,Tempo):- duracao(Caminho, Tempo), \+ (duracao(_, Tempo1), Tempo1 > Tempo).


%CaminhoMaisBarato
caminhoMaisBarato(X,Y,Caminho,Custo):- retractall(custo(_,_)), listaCaminhos(X,Y,Lista), 
gerarCustosCaminhos(Lista), maisBarato(Caminho,Custo).

maisBarato(Caminho,Custo):- custo(Caminho, Custo), \+ (custo(_, Custo1), Custo > Custo1).

%CaminhoMaisCaro
caminhoMaisCaro(X,Y,Caminho, Custo):- retractall(custo(_,_)), listaCaminhos(X,Y,Lista), 
gerarCustosCaminhos(Lista), maisCaro(Caminho, Custo).

maisCaro(Caminho, Custo):- custo(Caminho, Custo), \+ (custo(_, Custo1), Custo1 > Custo).
