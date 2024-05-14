:- dynamic total_tempo/2.
:- dynamic total_custo/2.
:- [base_dados].

% Cálculo do tempo total de um caminho
calcular_tempo([end], 0).
calcular_tempo([Tratamento1, Tratamento2 | Rest], TempoTotal) :-
    percurso(Tratamento1, Tratamento2, Tempo),
    calcular_tempo([Tratamento2 | Rest], TempoRestante),
    TempoTotal is Tempo + TempoRestante.

% Cálculo do custo total de um caminho
calcular_custo([end], 0).
calcular_custo([Tratamento | Rest], CustoTotal) :-
    tratamento(Tratamento, Custo),
    calcular_custo(Rest, CustoRestante),
    CustoTotal is Custo + CustoRestante.
calcular_custo([end | Rest], CustoTotal) :-
    calcular_custo(Rest, CustoTotal).

% Geração de todos os caminhos possíveis de 'start' a 'end'
gerar_caminhos(start, end, Caminho) :-
    gerar_caminhos(start, end, [start], Caminho).
gerar_caminhos(end, end, Caminho, Caminho).
gerar_caminhos(TratamentoAtual, end, Visitados, Caminho) :-
    percurso(TratamentoAtual, ProximoTratamento, _),
    \+ member(ProximoTratamento, Visitados),
    gerar_caminhos(ProximoTratamento, end, [ProximoTratamento | Visitados], Caminho).

lista_caminhos(start, ListaCaminhos) :-
    findall(Caminho, gerar_caminhos(start, end, Caminho), ListaCaminhos).

% Exibir caminhos com seus tempos e custos
exibir_caminhos([]).
exibir_caminhos([Caminho | Restantes]) :-
    calcular_tempo(Caminho, Tempo),
    calcular_custo(Caminho, Custo),
    format('Caminho: ~w, Tempo Total: ~w, Custo Total: ~w~n', [Caminho, Tempo, Custo]),
    exibir_caminhos(Restantes).

% Calcular e exibir todos os caminhos, tempos e custos
calcular_todos_os_caminhos :-
    lista_caminhos(start, ListaCaminhos),
    exibir_caminhos(ListaCaminhos).

% Consultar este predicado para ver os resultados
% ?- calcular_todos_os_caminhos.