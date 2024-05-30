:- dynamic duracao/2.
:- dynamic custo/2.
:- dynamic tempo/2.
:- [base_conhecimento].
:- [hillclimbing].
:- [base_dados].

% Interface principal
iniciar :-
    nl,nl,
    write('-------------------------------'), nl,
    write('Insira o que pretende calcular:'), nl,nl,
    write('1. Caminho com menor custo'), nl,
    write('2. Caminho com maior custo'), nl,
    write('3. Caminho com menor tempo'), nl,
    write('4. Caminho com maior tempo'), nl,
    write('5. Caminho mais vantajoso'), nl,nl,
    read(Opcao),
    tratar_opcao(Opcao).

tratar_opcao(1) :-
    caminhoMaisBarato(start, end, Caminho, Custo),
    write('Caminho com menor custo: '), write(Caminho), nl,
    write('Custo: '), write(Custo), nl,
    iniciar.

tratar_opcao(2) :-
    caminhoMaisCaro(start, end, Caminho, Custo),
    write('Caminho com maior custo: '), write(Caminho), nl,
    write('Custo: '), write(Custo), nl,
    iniciar.

tratar_opcao(3) :-
    caminhoMaisCurto(start, end, Caminho, Tempo),
    write('Caminho com menor tempo: '), write(Caminho), nl,
    write('Tempo: '), write(Tempo), nl,
    iniciar.

tratar_opcao(4) :-
    caminhoMaisLongo(start, end, Caminho, Tempo),
    write('Caminho com maior tempo: '), write(Caminho), nl,
    write('Tempo: '), write(Tempo), nl,
    iniciar.

tratar_opcao(5) :-
    write('Qual algoritmo deseja usar?'), nl,
    write('1. Depthfirst'), nl,
    write('2. Hill Climbing'), nl,
    read(OpcaoAlgoritmo),
    tratar_opcao_algoritmo(OpcaoAlgoritmo),
    iniciar.

tratar_opcao_algoritmo(1) :-
    caminhoMaisVantajoso(start, end, Caminho, Vantagem, Tempo, Custo),
    write('Caminho mais vantajoso (depthfirst): '), write(Caminho), nl,
    write('Vantagem: '), write(Vantagem), nl,
    write('Tempo: '), write(Tempo), nl,
    write('Custo: '), write(Custo), nl,
    iniciar.

tratar_opcao_algoritmo(2) :-
    demo,
    iniciar.


