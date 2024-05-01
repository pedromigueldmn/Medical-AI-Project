% Paulo Cortez 2021@
%  Pedro Pires, Bruno Alves, Mariana Neiva, Liandro Cruz (2024)
:- [satisfy, induce_ifthen, doenca_ifthen].

% the goal is to classify
learn_rules:-
    learn(nao),  % negative examples
    learn(sim),  % positive examples
    % save new rules:
    tell('doencas_ifthen.pl'),
    listing(<==),
    told.

% example of classifying
q1(Class):- classify([idade=idade18a25,aspeto=preco,tipo=carne,preco=preco5a7],Class), write(classify([idade=idade18a25,aspeto=preco,tipo=carne,preco=preco5a7],Class)).
q2(Class):- classify([idade=idade18a25,aspeto=variedade,tipo=carne,preco=preco7a10],Class).
q3(Class):- classify([tipo=francesinha, preco=preco5a7],Class).
q6(Class):- classify([tipo=hamburguers, preco=preco7a10, aspeto=variedade],Class).
q5(Class):- classify([idade=idademaior55,aspeto=comida,tipo=peixe,preco=preco15a20], Class).

q4(Class):- findall(A,fact(A),Z), classify(Z,Class), retractall(fact(_)).

menu :- 
    write(
    "
                  Gostaria de descobrir qual a doença que o atormenta?
                  Seja bem-vindo ao sistema de recomendacao!*_*

    "), nl,

    write(
    "____________________________________________________________________________________________________
 
                    Indique a sua idade

                    1- 0 a  anos
                    2- 4 a 10 anos
                    3- 26 a 35
                    4- 36 a 45
                    5- 46 a 55
                    6- Maior de 55
 
                    0- Sair 

    ___________________________________________________________________________________________________"), nl, nl,
    read(Idade),
    ((Idade == 0), halt;
     (Idade == 1), assert(fact(idade=idade15a17));
     (Idade == 2), assert(fact(idade=idade18a25));
     (Idade == 3), assert(fact(idade=idade26a35));
     (Idade == 4), assert(fact(idade=idade36a45));
     (Idade == 5), assert(fact(idade=idade46a55));
     (Idade == 6), assert(fact(idade=idademaior55))), nl,

    write(
    "____________________________________________________________________________________________________
 
                    Tem febre?

                    1- Sim
                    2- Não
                    0- Sair

    ____________________________________________________________________________________________________"), nl, nl,
    read(Sintoma1),
    ((Sintoma1 == 0), halt;
     (Sintoma1 == 1), assert(fact(febre=sim));
     (Sintoma1 == 2), assert(fact(febre=nao))), nl,

    write(
    "____________________________________________________________________________________________________
 
                    Tem dor de garganta?

                    1- Sim
                    2- Não
                    0- Sair

    ____________________________________________________________________________________________________"), nl, nl,
    read(Sintoma2),
    ((Sintoma2 == 0), halt;
     (Sintoma2 == 1), assert(fact(dor_de_garganta=sim));
     (Sintoma2 == 2), assert(fact(dor_de_garganta=nao))), nl,

    write(
    "____________________________________________________________________________________________________
 
                    Tem dor de cabeça?

                    1- Sim
                    2- Não
                    0- Sair

    ____________________________________________________________________________________________________"), nl, nl,
    read(Sintoma3),
    ((Sintoma3 == 0), halt;
     (Sintoma3 == 1), assert(fact(dor_de_cabeca=sim));
     (Sintoma3 == 2), assert(fact(dor_de_cabeca=nao))), nl,

    write(
    "____________________________________________________________________________________________________

                    Tem alterações na pele?

                    1- Sim
                    2- Não
                    0- Sair

    ____________________________________________________________________________________________________"), nl, nl,
    read(Sintoma4),
    ((Sintoma4 == 0), halt;
     (Sintoma4 == 1), assert(fact(alteracoes_pele=sim));
     (Sintoma4 == 2), assert(fact(alteracoes_pele=nao))), nl,

    write(
    "____________________________________________________________________________________________________

                    Tem alterações de humor ou comportamento?

                    1- Sim
                    2- Não
                    0- Sair

    ____________________________________________________________________________________________________"), nl, nl,
    read(Sintoma5),
    ((Sintoma5 == 0), halt;
     (Sintoma5 == 1), assert(fact(alteracoes_humor_comportamento=sim));
     (Sintoma5 == 2), assert(fact(alteracoes_humor_comportamento=nao))), nl,

    write("____________________________________________________________________________________________________"), nl, nl,
    write('RESULTADO'), nl,

    q4(C),

    write('Doença: '), write(C), nl, nl,

    write("As melhoras!"), nl.
