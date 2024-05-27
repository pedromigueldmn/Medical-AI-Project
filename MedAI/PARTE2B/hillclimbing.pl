% Definição dos tratamentos e seus custos
tratamento(start, 0).
tratamento(paracetamol, 5).
tratamento(brufen, 4).
tratamento(aspirina, 2).
tratamento(anti_histaminico, 8).
tratamento(descanso, 100).
tratamento(fisioterapia, 150).
tratamento(cineterapia, 200).
tratamento(desporto, 0).
tratamento(cirurgia, 1200).
tratamento(inalacoes, 50).
tratamento(insulina, 34).
tratamento(antibiotico, 25).
tratamento(dieta, 0).
tratamento(ginastica, 90).
tratamento(internamento, 250).
tratamento(dialise, 100).
tratamento(calmante, 80).
tratamento(injecoes, 75).
tratamento(inalo_terapia, 90).
tratamento(soro, 15).
tratamento(oculos, 500).
tratamento(lentes_contacto, 300).
tratamento(ambulatorio, 800).
tratamento(end, 0).

% Definição dos arcos e tempos (dias/sessões)
percurso(start, paracetamol, 2).
percurso(start, brufen, 3).
percurso(start, aspirina, 4).
percurso(start, anti_histaminico, 5).
percurso(start, descanso, 2).

percurso(paracetamol, descanso, 2).
percurso(paracetamol, fisioterapia, 6).
percurso(paracetamol, cineterapia, 8).
percurso(paracetamol, antibiotico, 8).
percurso(paracetamol, oculos, 1000).
percurso(paracetamol, lentes_contacto, 200).

percurso(brufen, descanso, 2).
percurso(brufen, fisioterapia, 6).
percurso(brufen, desporto, 12).
percurso(brufen, ginastica, 15).
percurso(brufen, oculos, 1000).
percurso(brufen, lentes_contacto, 200).

percurso(aspirina, inalacoes, 10).
percurso(aspirina, insulina, 30).
percurso(aspirina, antibiotico, 8).
percurso(aspirina, dieta, 30).
percurso(aspirina, soro, 8).
percurso(aspirina, oculos, 1000).
percurso(aspirina, lentes_contacto, 200).

percurso(anti_histaminico, antibiotico, 8).
percurso(anti_histaminico, internamento, 3).

percurso(descanso, cineterapia, 8).
percurso(descanso, oculos, 1000).
percurso(descanso, lentes_contacto, 200).

percurso(fisioterapia, end, 0).
percurso(fisioterapia, cirurgia, 3).
percurso(fisioterapia, ginastica, 15).
percurso(fisioterapia, calmante, 90).
percurso(fisioterapia, injecoes, 3).
percurso(fisioterapia, ambulatorio, 20).

percurso(cineterapia, end, 0).
percurso(cineterapia, calmante, 90).

percurso(desporto, dieta, 30).
percurso(desporto, calmante, 90).

percurso(cirurgia, internamento, 3).
percurso(cirurgia, soro, 8).

percurso(inalacoes, soro, 8).

percurso(insulina, dialise, 10).
percurso(insulina, injecoes, 3).

percurso(antibiotico, internamento, 3).

percurso(dieta, end, 0).

percurso(ginastica, ambulatorio, 20).

percurso(internamento, end, 0).

percurso(dialise, end, 0).

percurso(calmante, ambulatorio, 20).

percurso(injecoes, inalo_terapia, 6).
percurso(injecoes, ambulatorio, 20).

percurso(inalo_terapia, end, 0).

percurso(soro, ambulatorio, 20).

percurso(oculos, end, 0).

percurso(lentes_contacto, end, 0).

percurso(ambulatorio, end, 0).

% Função para calcular o custo total de um caminho (custo + tempo)
eval([_], 0).
eval([D, O | X], C) :-
    tratamento(O, CustoO),
    percurso(O, D, TempoD),
    eval([O | X], C2),
    C is CustoO + TempoD + C2.

% Definir a origem e o destino
origem(start).
destino(end).

% Função para encontrar novos caminhos
change(S, SNEW) :-
    origem(O), destino(D),
    findall(C, caminho(O, D, C), L),
    select_melhor(L, SNEW).

select_melhor([H], H) :- !.
select_melhor([H|T], Melhor) :-
    select_melhor(T, TempMelhor),
    eval(H, EH),
    eval(TempMelhor, ET),
    (EH < ET -> Melhor = H ; Melhor = TempMelhor).

% Demonstração do algoritmo
demo :-
    origem(O), destino(D), caminho(O, D, C),
    hill_climbing(C, [20, 1, 0, min], S), write(S).

% Definição dos caminhos
caminho(X, Z, C) :- caminho(X, Z, [X], C).
caminho(X, X, Caminho, Caminho).
caminho(X, Z, Visitado, Caminho) :-
    percurso(X, Y, _),
    \+ member(Y, Visitado),
    caminho(Y, Z, [Y | Visitado], Caminho).

% Função para determinar a melhor solução
best(Prob, Opt, S1, E1, S2, E2, SR, ER) :-
    eval(S2, E2),
    best_opt(Prob, Opt, S1, E1, S2, E2, SR, ER).

best_opt(Prob, _, _, _, S2, E2, S2, E2) :-
    random(X), 
    X < Prob.

best_opt(_, Opt, S1, E1, S2, E2, SR, ER) :-
    ((Opt = max, max_list([E1, E2], ER)); (Opt = min, min_list([E1, E2], ER))),
    ((ER == E1, SR = S1); (ER == E2, SR = S2)).

% Mostrar evolução
show(final, Verbose, S1, E1, _, _) :-
    Verbose > 0,
    write('final:'), write(' S:'), write(S1), write(' E:'), write(E1), nl.
show(0, Verbose, S1, E1, _, _) :-
    Verbose > 0,
    write('init:'), write(' S0:'), write(S1), write(' E0:'), write(E1), nl.
show(I, Verbose, S1, E1, S2, E2) :-
    0 is I mod Verbose,
    write('iter:'), write(I), write(' S1:'), write(S1), write(' E1:'),
    write(E1), write(' S2:'), write(S2), write(' E2:'), nl.
show(_, _, _, _, _, _).

% Algoritmo de Hill Climbing
hill_climbing(S0, [Iter, Verbose, Prob, Opt], S1) :-
    eval(S0, E0),
    show(0, Verbose, S0, E0, _, _),
    hill_climbing(S0, E0, 0, Iter, Verbose, Prob, Opt, S1).

hill_climbing(S, _, Iter, Iter, _, _, _, S).
hill_climbing(S1, E1, I, Iter, Verbose, Prob, Opt, SFinal) :-
    change(S1, SNew),
    best(0, Opt, S1, E1, SNew, _, S2, E2), % Prob = 0 para garantir a escolha da melhor solução
    I1 is I + 1,
    show(I1, Verbose, S1, E1, S2, E2),
    hill_climbing(S2, E2, I1, Iter, Verbose, Prob, Opt, SFinal).
