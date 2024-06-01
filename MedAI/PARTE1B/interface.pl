% Paulo Cortez 2021@
%  Pedro Pires, Bruno Alves, Mariana Neiva, Liandro Cruz (2024)
:- [satisfy, induce_ifthen, doencas_ifthen].

% the goal is to classify
learn_rules:-
    learn(nao),  % negative examples
    learn(sim),  % positive examples
    % save new rules:
    tell('doencas_ifthen.pl'),
    listing(<==),
    told.

% Exemplo de classificação para doenças  
% doenca nao infeciosa
q1(Class):- classify([alteracoes_pele=nao, hereditaria=nao, faixa_etaria=adolescente], Class).
q2(Class):- classify([alteracoes_pele=nao, hereditaria=nao, faixa_etaria=crianca], Class).
q3(Class):- classify([alteracoes_pele=nao, hereditaria=sim, febre=nao], Class).
q4(Class):- classify([alteracoes_pele=sim, febre=nao], Class).

%doenca infeciosa
q5(Class):- classify([alteracoes_pele=nao, hereditaria=nao, faixa_etaria=adulto, alteracoes_humor_comportamento=nao], Class).
q6(Class):- classify([alteracoes_pele=nao, hereditaria=nao, faixa_etaria=adulto_jovem], Class).
q7(Class):- classify([alteracoes_pele=nao, hereditaria=nao, faixa_etaria=idoso], Class).
q8(Class):- classify([alteracoes_pele=nao, hereditaria=nao, faixa_etaria=meia_idade], Class).
q9(Class):- classify([alteracoes_pele=nao, hereditaria=sim, febre=sim], Class).
q10(Class):- classify([alteracoes_pele=sim, febre=sim], Class).

% Função para coletar fatos e classificar
q11(Class):- findall(A,fact(A),Z), classify(Z,Class), retractall(fact(_)).


menu :- 
    write(
    "
                  Gostaria de descobrir qual o tipo da doença que o atormenta?
                  Seja bem-vindo ao sistema de recomendacao!*_*

    "), nl,

    write(
    "___________________________________________________________________________________________________
 
                    Indique a sua idade

                    1- 0 a 2 anos
                    2- 3 a 12 anos
                    3- 13 a 17 anos
                    4- 18 a 29
                    5- 30 a 59
                    6- 60 a 74
                    7- Mais de 75

    ___________________________________________________________________________________________________"), nl, nl,
    read(Idade),
     ((Idade == 1), assert(fact(faixa_etaria=bebe));
     (Idade == 2), assert(fact(faixa_etaria=crianca));
     (Idade == 3), assert(fact(faixa_etaria=adolescente));
     (Idade == 4), assert(fact(faixa_etaria=adulto_jovem));
     (Idade == 5), assert(fact(faixa_etaria=adulto));
     (Idade == 6), assert(fact(faixa_etaria=meia_idade));
     (Idade == 7), assert(fact(faixa_etaria=idoso))), nl,

    write(
    "___________________________________________________________________________________________________
 
                    Tem febre?

                    1- Sim
                    2- Não

    ____________________________________________________________________________________________________"), nl, nl,
    read(Sintoma1),
    ((Sintoma1 == 1), assert(fact(febre=sim));
     (Sintoma1 == 2), assert(fact(febre=nao))), nl,

    write(
    "___________________________________________________________________________________________________

                    Tem alterações na pele?

                    1- Sim
                    2- Não

    ____________________________________________________________________________________________________"), nl, nl,
    read(Sintoma2),
    ((Sintoma2 == 1), assert(fact(alteracoes_pele=sim));
     (Sintoma2 == 2), assert(fact(alteracoes_pele=nao))), nl,

    write(
     "___________________________________________________________________________________________________
    
                    Tem alterações de humor ou comportamento?
    
                    1- Sim
                    2- Não
    
     ____________________________________________________________________________________________________"), nl, nl,
        read(Sintoma3),
        ((Sintoma3 == 1), assert(fact(alteracoes_humor_comportamento=sim));
         (Sintoma3 == 2), assert(fact(alteracoes_humor_comportamento=nao))), nl,

    write(
    "____________________________________________________________________________________________________

                    Tem alguma doença hereditária?

                    1- Sim
                    2- Não

    ____________________________________________________________________________________________________"), nl, nl,
    read(Hereditaria),
    ((Hereditaria == 1), assert(fact(hereditaria=sim));
     (Hereditaria == 2), assert(fact(hereditaria=nao))), nl,


    write("___________________________________________________________________________________________________"), nl, nl,
    write('RESULTADO'), nl,

    q11(C),

    write('Doença: '), write(C), nl, nl,

    write("As melhoras!"), nl.
