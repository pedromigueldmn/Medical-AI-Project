:-dynamic(fact/1),
[forward, basedados, proof, basedeconhecimento].

menu:- nl,
      write('********************************************************************************************************'), nl,
      write('Bem-vindo(a) ao seu questionário de diagnóstico! Antes de começarmos, qual é o seu nome?'), nl,
      read(Paciente), nl,
      write('********************************************************************************************************'), nl, nl,
      write('Prazer em ajudá-lo/a, Sr./Sra. '), write(Paciente), nl, nl, nl,
      write('********************************************************************************************************'), nl,
      write('**                                                                                                    **'), nl,
      write('** Responda algumas perguntas para auxiliar no diagnóstico.                                            **'), nl,
      write('** Baseado nas suas respostas, poderemos recomendar tratamentos adequados.                             **'), nl,
      write('**                                                                                                    **'), nl,
      write('********************************************************************************************************'), nl,
      write('**   Menu:'), nl,
      write('**'), nl,
      write('**   1- Iniciar'), nl,
      write('**   2- Sair'), nl, nl,
      read(Y),
      avaliarEscolha(Y).

avaliarEscolha(1):- questao1.
avaliarEscolha(2):- write('Foi um prazer ajudá-lo!'), halt.
avaliarEscolha(_):- write('Introduza uma opção válida, por favor comece de novo.'), nl, menu.

questao1:- write('********************************************************************************************************'), nl,
           write('**  Qual a sua idade?'), nl,
           write('**'), nl,
           write('**  1 - Entre 0-3 meses (bebé)'), nl,
           write('**  2 - Entre 4-10 anos (criança)'), nl,
           write('**  3 - Entre 11-17 anos (adolescente)'), nl,
           write('**  4 - Maior de 18 anos (adulto)'), nl, nl,
           read(A1),
           (   (A1 == 1), Idade='0-3', questao2;
               (A1 == 2), Idade='4-10',questao2;
               (A1 == 3), Idade='11-17',questao2;
               (A1 == 4), Idade='18+',questao2).

questao2:- write('********************************************************************************************************'), nl,
           write('**  Qual o seu gênero?'), nl,
           write('**  1 - Feminino'), nl,
           write('**  2 - Masculino'), nl, nl,
           read(A2),
           (   (A2 == 1), questao3;
               (A2 == 2), questao4).

questao3:- write('********************************************************************************************************'), nl,
           write('**  Está grávida?'), nl,
           write('**  1 - Sim'), nl,
           write('**  2 - Não'), nl, nl,
           read(A3),
           (   (A3 == 1), assert(fact('s')), questao4;
               (A3 == 2), assert(fact('n')), questao4).

questao4:- write('********************************************************************************************************'), nl,
            write('**  Tem preferência por algum tipo de farmacológico?'), nl,
            write('**  1 - Sim'), nl,
            write('**  2 - Não'), nl, nl,
            read(A4),
            (   (A4 == 1), questao5;
                (A4 == 2),Farma='_',questao6).

questao5:- write('********************************************************************************************************'), nl,
            write('**  Qual o tipo de framacológico que prefere?'), nl,
            write('**  1 - Xarope'), nl,
            write('**  2 - Gotas'), nl,
            write('**  3 - Comprimido'), nl,
            write('**  4 - Spray'), nl, nl,
            read(A5),
            (   (A5 == 1), Farma= 'x', questao6;
                (A5 == 2), Farma= 'g', questao6;
                (A5 == 1), Farma= 'c', questao6;
                (A5 == 2), Farma= 's', questao6).


questao6:- write('********************************************************************************************************'), nl,
    write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
    write_sintomas,
    read(A6),
    (
    (A6 == 1), assert(fact(gases)), questao5;
    (A6 == 2), assert(fact(colicas)), questao5;
    (A6 == 3), assert(fact(urgencia_em_defecar)), questao5;
    (A6 == 4), assert(fact(nauseas_vomitos)), questao5;
    (A6 == 5), assert(fact(dificuldade_respirar)), questao5;
    (A6 == 6), assert(fact(respiracao_rapida_curta)), questao5;
    (A6 == 7), assert(fact(tosse)), questao5;
    (A6 == 8), assert(fact(aperto_peito)), questao5;
    (A6 == 9), assert(fact(visao_desfocada)), questao5;
    (A6 == 10), assert(fact(tonturas)), questao5;
    (A6 == 11), assert(fact(sangramento_nasal)), questao5;
    (A6 == 12), assert(fact(dor_de_cabeca)), questao5;
    (A6 == 13), assert(fact(sensibilidade_luz)), questao5;
    (A6 == 14), assert(fact(febre)), questao5;
    (A6 == 15), assert(fact(congestao_nasal)), questao5;
    (A6 == 16), assert(fact(dores_musculares)), questao5;
    (A6 == 17), assert(fact(dor_de_garganta)), questao5;
    (A6 == 18), assert(fact(dificuldade_em_engolir)), questao5;
    (A6 == 19), assert(fact(rouquidao)), questao5;
    (A6 == 20), assert(fact(nariz_entupido)), questao5;
    (A6 == 21), assert(fact(espirros)), questao5;
    (A6 == 22), assert(fact(coceira_olhos)), questao5;
    (A6 == 23), assert(fact(coceira_garganta)), questao5;
    (A6 == 24), assert(fact(azia)), questao5;
    (A6 == 25), assert(fact(regurgitacao)), questao5;
    (A6 == 26), assert(fact(dor_lombar)), questao5;
    (A6 == 27), assert(fact(dormencia_gluteos_pernas)), questao5;
    (A6 == 28), assert(fact(dificuldade_em_adormecer)), questao5;
    (A6 == 29), assert(fact(acordar_cedo_demais)), questao5;
    (A6 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), questao5;
    (A6 == 31), assert(fact(sensacao_de_sono_nao_reparador)), questao5;
    (A6 == 32), assert(fact(diminuicao_da_flexibilidade)), questao5;
    (A6 == 33), assert(fact(sensacao_de_fadiga)), questao5).


questao7:- write('********************************************************************************************************'), nl,
    write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
    write_sintomas,
    read(A7),
    (
    (A7 == 1), assert(fact(gases)), questao6;
    (A7 == 2), assert(fact(colicas)), questao6;
    (A7 == 3), assert(fact(urgencia_em_defecar)), questao6;
    (A7 == 4), assert(fact(nauseas_vomitos)), questao6;
    (A7 == 5), assert(fact(dificuldade_respirar)), questao6;
    (A7 == 6), assert(fact(respiracao_rapida_curta)), questao6;
    (A7 == 7), assert(fact(tosse)), questao6;
    (A7 == 8), assert(fact(aperto_peito)), questao6;
    (A7 == 9), assert(fact(visao_desfocada)), questao6;
    (A7 == 10), assert(fact(tonturas)), questao6;
    (A7 == 11), assert(fact(sangramento_nasal)), questao6;
    (A7 == 12), assert(fact(dor_de_cabeca)), questao6;
    (A7 == 13), assert(fact(sensibilidade_luz)), questao6;
    (A7 == 14), assert(fact(febre)), questao6;
    (A7 == 15), assert(fact(congestao_nasal)), questao6;
    (A7 == 16), assert(fact(dores_musculares)), questao6;
    (A7 == 17), assert(fact(dor_de_garganta)), questao6;
    (A7 == 18), assert(fact(dificuldade_em_engolir)), questao6;
    (A7 == 19), assert(fact(rouquidao)), questao6;
    (A7 == 20), assert(fact(nariz_entupido)), questao6;
    (A7 == 21), assert(fact(espirros)), questao6;
    (A7 == 22), assert(fact(coceira_olhos)), questao6;
    (A7 == 23), assert(fact(coceira_garganta)), questao6;
    (A7 == 24), assert(fact(azia)), questao6;
    (A7 == 25), assert(fact(regurgitacao)), questao6;
    (A7 == 26), assert(fact(dor_lombar)), questao6;
    (A7 == 27), assert(fact(dormencia_gluteos_pernas)), questao6;
    (A7 == 28), assert(fact(dificuldade_em_adormecer)), questao6;
    (A7 == 29), assert(fact(acordar_cedo_demais)), questao6;
    (A7 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), questao6;
    (A7 == 31), assert(fact(sensacao_de_sono_nao_reparador)), questao6;
    (A7 == 32), assert(fact(diminuicao_da_flexibilidade)), questao6;
    (A7 == 33), assert(fact(sensacao_de_fadiga)), questao6).

questao8:- write('********************************************************************************************************'), nl,
    write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
    write_sintomas,
    read(A8),
    (
    (A8 == 1), assert(fact(gases)), resultado;
    (A8 == 2), assert(fact(colicas)), resultado;
    (A8 == 3), assert(fact(urgencia_em_defecar)), resultado;
    (A8 == 4), assert(fact(nauseas_vomitos)), resultado;
    (A8 == 5), assert(fact(dificuldade_respirar)), resultado;
    (A8 == 6), assert(fact(respiracao_rapida_curta)), resultado;
    (A8 == 7), assert(fact(tosse)), resultado;
    (A8 == 8), assert(fact(aperto_peito)), resultado;
    (A8 == 9), assert(fact(visao_desfocada)), resultado;
    (A8 == 10), assert(fact(tonturas)), resultado;
    (A8 == 11), assert(fact(sangramento_nasal)), resultado;
    (A8 == 12), assert(fact(dor_de_cabeca)), resultado;
    (A8 == 13), assert(fact(sensibilidade_luz)), resultado;
    (A8 == 14), assert(fact(febre)), resultado;
    (A8 == 15), assert(fact(congestao_nasal)), resultado;
    (A8 == 16), assert(fact(dores_musculares)), resultado;
    (A8 == 17), assert(fact(dor_de_garganta)), resultado;
    (A8 == 18), assert(fact(dificuldade_em_engolir)), resultado;
    (A8 == 19), assert(fact(rouquidao)), resultado;
    (A8 == 20), assert(fact(nariz_entupido)), resultado;
    (A8 == 21), assert(fact(espirros)), resultado;
    (A8 == 22), assert(fact(coceira_olhos)), resultado;
    (A8 == 23), assert(fact(coceira_garganta)), resultado;
    (A8 == 24), assert(fact(azia)), resultado;
    (A8 == 25), assert(fact(regurgitacao)), resultado;
    (A8 == 26), assert(fact(dor_lombar)), resultado;
    (A8 == 27), assert(fact(dormencia_gluteos_pernas)), resultado;
    (A8 == 28), assert(fact(dificuldade_em_adormecer)), resultado;
    (A8 == 29), assert(fact(acordar_cedo_demais)), resultado;
    (A8 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), resultado;
    (A8 == 31), assert(fact(sensacao_de_sono_nao_reparador)), resultado;
    (A8 == 32), assert(fact(diminuicao_da_flexibilidade)), resultado;
    (A8 == 33), assert(fact(sensacao_de_fadiga)), resultado).


write_sintomas:- 
    write('********************************************************************************************************'), nl,
                write('**  1 - Gases'), nl,
                write('**  2 - Cólicas'), nl, 
                write('**  3 - Urgência em defecar'),nl,
                write('**  4 - Náuseas e vômitos'), nl,
                write('**  5 - Dificuldade em respirar'), nl,
                write('**  6 - Respiração rápida e curta'), nl,
                write('**  7 - Tosse'), nl,
                write('**  8 - Aperto no peito'), nl,
                write('**  9 - Visão desfocada'), nl,
                write('**  10 - Tonturas'), nl,
                write('**  11 - Sangramento nasal'), nl,
                write('**  12 - Dor de cabeça'), nl,
                write('**  13 - Sensibilidade à luz'), nl,
                write('**  14 - Febre'), nl,
                write('**  15 - Congestão nasal'), nl,
                write('**  16 - Dores musculares'), nl,
                write('**  17 - Dor de garganta'), nl,
                write('**  18 - Dificuldade em engolir'), nl,
                write('**  19 - Rouquidão'), nl,
                write('**  20 - Nariz entupido'), nl,
                write('**  21 - Espirros'), nl,
                write('**  22 - Coceira nos olhos'), nl,
                write('**  23 - Coceira na garganta'), nl,
                write('**  24 - Azia'), nl,
                write('**  25 - Regurgitação'), nl,
                write('**  26 - Dor na região lombar'), nl,
                write('**  27 - Dormência nos glúteos e pernas'), nl,
                write('**  28 - Dificuldade em adormecer'), nl,
                write('**  29 - Acorcar cedo demais'), nl,
                write('**  30 - Acordar muitas vezes ao longo da noite'), nl,
                write('**  31 - Sensação de sono não reparador'), nl,
                write('**  32 - Diminuição da flexibilidade'), nl,
                write('**  33 - Sensação de fadiga'), nl,nl,
    true.

resultado:- write('********************************************************************************************************'), nl,
            write('**                                                                                                    **'), nl,
            write('**                                         Resultado Obtido                                           **'), nl,
            write('**                                                                                                    **'), nl,
            write('********************************************************************************************************'),nl,
            result.


resultadowrite(P):- write('O SEU PERFIL É: '),
            write('     *** '),write(P),write(' ***'),nl,nl,
            write('     TRATAMENTO ACONSELHADO: '),perfil(P,Farma),nl,nl,
            write('********************************************************************************************************'),
            retractall(fact(_)).

