% interface.pl

:- dynamic duracao/2.
:- dynamic custo/2.
:- [base_conhecimento].
:- [hillclimbing].

% Interface principal
iniciar :-
    write('O que deseja calcular?'), nl,
    write('1. Caminho com menor custo'), nl,
    write('2. Caminho com maior custo'), nl,
    write('3. Caminho com menor tempo'), nl,
    write('4. Caminho com maior tempo'), nl,
    write('5. Caminho mais vantajoso'), nl,
    read(Opcao),
    tratar_opcao(Opcao).

tratar_opcao(1) :-
    caminhoMaisBarato(start, end, Caminho, Custo),
    write('Caminho com menor custo: '), write(Caminho), nl,
    write('Custo: '), write(Custo), nl.

tratar_opcao(2) :-
    caminhoMaisCaro(start, end, Caminho, Custo),
    write('Caminho com maior custo: '), write(Caminho), nl,
    write('Custo: '), write(Custo), nl.

tratar_opcao(3) :-
    caminhoMaisCurto(start, end, Caminho, Tempo),
    write('Caminho com menor tempo: '), write(Caminho), nl,
    write('Tempo: '), write(Tempo), nl.

tratar_opcao(4) :-
    caminhoMaisLongo(start, end, Caminho, Tempo),
    write('Caminho com maior tempo: '), write(Caminho), nl,
    write('Tempo: '), write(Tempo), nl.

tratar_opcao(5) :-
    write('Qual algoritmo deseja usar?'), nl,
    write('1. Algoritmo existente'), nl,
    write('2. Hill Climbing'), nl,
    read(OpcaoAlgoritmo),
    tratar_opcao_algoritmo(OpcaoAlgoritmo).

tratar_opcao_algoritmo(1) :-
    caminhoMaisVantajoso(start, end, Caminho, Vantagem, Tempo, Custo),
    write('Caminho mais vantajoso (Algoritmo existente): '), write(Caminho), nl,
    write('Vantagem: '), write(Vantagem), nl,
    write('Tempo: '), write(Tempo), nl,
    write('Custo: '), write(Custo), nl.

tratar_opcao_algoritmo(2) :-
    demo_hill_climbing.

demo_hill_climbing :-
    origem(O),
    destino(D),
    caminho(O, D, Caminho),
    hill_climbing(Caminho, [20, 1, 0, min], MelhorCaminho),
    eval(MelhorCaminho, Vantagem),
    calcularTempo(O, MelhorCaminho, Tempo),
    custoTotal(MelhorCaminho, Custo),
    write('Caminho mais vantajoso (Hill Climbing): '), write(MelhorCaminho), nl,
    write('Vantagem: '), write(Vantagem), nl,
    write('Tempo: '), write(Tempo), nl,
    write('Custo: '), write(Custo), nl.

% Predicado principal de execução
:- iniciar.
