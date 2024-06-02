:- dynamic duracao/2.
:- dynamic custo/2.
:- dynamic tempo/2.
:- [base_conhecimento].
:- [hillclimbing].
:- [base_dados].

% Interface principal
iniciar :-
    nl, nl,
    write('-------------------------------'), nl,
    write('Insira o que pretende calcular:'), nl, nl,
    write('1. Caminho com menor custo'), nl,
    write('2. Caminho com maior custo'), nl,
    write('3. Caminho com menor tempo'), nl,
    write('4. Caminho com maior tempo'), nl,
    write('5. Caminho mais vantajoso'), nl,
    write('6. Caminho menos vantajoso'), nl, nl,
    read(Opcao), nl,
    tratar_opcao(Opcao).

tratar_opcao(1) :-
    imprimirCaminhoMaisBarato(start, end),
    iniciar.

tratar_opcao(2) :-
    imprimirCaminhoMaisCaro(start, end),
    iniciar.

tratar_opcao(3) :-
    imprimirCaminhoMaisCurto(start, end),
    iniciar.

tratar_opcao(4) :-
    imprimirCaminhoMaisLongo(start, end),
    iniciar.

tratar_opcao(5) :-
    nl,
    write('Qual algoritmo deseja utilizar?'), nl,
    write('1. Depthfirst'), nl,
    write('2. Hill Climbing'), nl,nl,
    read(OpcaoAlgoritmo),
    tratar_opcao_algoritmo(OpcaoAlgoritmo),
    iniciar.

tratar_opcao_algoritmo(1) :-
    imprimirCaminhoMaisVantajoso(start, end),
    iniciar.

tratar_opcao_algoritmo(2) :-
    demo,
    iniciar.

tratar_opcao(6) :-
    imprimirCaminhoMenosVantajoso(start, end),
    iniciar.
