:- encoding(utf8).

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
           (   (A1 == 1), assert(fact('0-3')), questao2;
               (A1 == 2), assert(fact('4-10')), questao2;
               (A1 == 3), assert(fact('11-17')), questao2;
               (A1 == 4), assert(fact('18+')), questao2).

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
    write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
    write_sintomas,
    read(A4),
    (
    (A4 == 1), assert(fact(gases)), questao5;
    (A4 == 2), assert(fact(colicas)), questao5;
    (A4 == 3), assert(fact(urgencia_em_defecar)), questao5;
    (A4 == 4), assert(fact(nauseas_vomitos)), questao5;
    (A4 == 5), assert(fact(dificuldade_respirar)), questao5;
    (A4 == 6), assert(fact(respiracao_rapida_curta)), questao5;
    (A4 == 7), assert(fact(tosse)), questao5;
    (A4 == 8), assert(fact(aperto_peito)), questao5;
    (A4 == 9), assert(fact(visao_desfocada)), questao5;
    (A4 == 10), assert(fact(tonturas)), questao5;
    (A4 == 11), assert(fact(sangramento_nasal)), questao5;
    (A4 == 12), assert(fact(dor_de_cabeca)), questao5;
    (A4 == 13), assert(fact(sensibilidade_luz)), questao5;
    (A4 == 14), assert(fact(febre)), questao5;
    (A4 == 15), assert(fact(congestao_nasal)), questao5;
    (A4 == 16), assert(fact(dores_musculares)), questao5;
    (A4 == 17), assert(fact(dor_de_garganta)), questao5;
    (A4 == 18), assert(fact(dificuldade_em_engolir)), questao5;
    (A4 == 19), assert(fact(rouquidao)), questao5;
    (A4 == 20), assert(fact(nariz_entupido)), questao5;
    (A4 == 21), assert(fact(espirros)), questao5;
    (A4 == 22), assert(fact(coceira_olhos)), questao5;
    (A4 == 23), assert(fact(coceira_garganta)), questao5;
    (A4 == 24), assert(fact(azia)), questao5;
    (A4 == 25), assert(fact(regurgitacao)), questao5;
    (A4 == 26), assert(fact(dor_lombar)), questao5;
    (A4 == 27), assert(fact(dormencia_gluteos_pernas)), questao5;
    (A4 == 28), assert(fact(dificuldade_em_adormecer)), questao5;
    (A4 == 29), assert(fact(acordar_cedo_demais)), questao5;
    (A4 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), questao5;
    (A4 == 31), assert(fact(sensacao_de_sono_nao_reparador)), questao5;
    (A4 == 32), assert(fact(diminuicao_da_flexibilidade)), questao5;
    (A4 == 33), assert(fact(sensacao_de_fadiga)), questao5).


questao5:- write('********************************************************************************************************'), nl,
    write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
    write_sintomas,
    read(A5),
    (
    (A5 == 1), assert(fact(gases)), questao6;
    (A5 == 2), assert(fact(colicas)), questao6;
    (A5 == 3), assert(fact(urgencia_em_defecar)), questao6;
    (A5 == 4), assert(fact(nauseas_vomitos)), questao6;
    (A5 == 5), assert(fact(dificuldade_respirar)), questao6;
    (A5 == 6), assert(fact(respiracao_rapida_curta)), questao6;
    (A5 == 7), assert(fact(tosse)), questao6;
    (A5 == 8), assert(fact(aperto_peito)), questao6;
    (A5 == 9), assert(fact(visao_desfocada)), questao6;
    (A5 == 10), assert(fact(tonturas)), questao6;
    (A5 == 11), assert(fact(sangramento_nasal)), questao6;
    (A5 == 12), assert(fact(dor_de_cabeca)), questao6;
    (A5 == 13), assert(fact(sensibilidade_luz)), questao6;
    (A5 == 14), assert(fact(febre)), questao6;
    (A5 == 15), assert(fact(congestao_nasal)), questao6;
    (A5 == 16), assert(fact(dores_musculares)), questao6;
    (A5 == 17), assert(fact(dor_de_garganta)), questao6;
    (A5 == 18), assert(fact(dificuldade_em_engolir)), questao6;
    (A5 == 19), assert(fact(rouquidao)), questao6;
    (A5 == 20), assert(fact(nariz_entupido)), questao6;
    (A5 == 21), assert(fact(espirros)), questao6;
    (A5 == 22), assert(fact(coceira_olhos)), questao6;
    (A5 == 23), assert(fact(coceira_garganta)), questao6;
    (A5 == 24), assert(fact(azia)), questao6;
    (A5 == 25), assert(fact(regurgitacao)), questao6;
    (A5 == 26), assert(fact(dor_lombar)), questao6;
    (A5 == 27), assert(fact(dormencia_gluteos_pernas)), questao6;
    (A5 == 28), assert(fact(dificuldade_em_adormecer)), questao6;
    (A5 == 29), assert(fact(acordar_cedo_demais)), questao6;
    (A5 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), questao6;
    (A5 == 31), assert(fact(sensacao_de_sono_nao_reparador)), questao6;
    (A5 == 32), assert(fact(diminuicao_da_flexibilidade)), questao6;
    (A5 == 33), assert(fact(sensacao_de_fadiga)), questao6).

questao6:- write('********************************************************************************************************'), nl,
    write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
    write_sintomas,
    read(A6),
    (
    (A6 == 1), assert(fact(gases)), resultado;
    (A6 == 2), assert(fact(colicas)), resultado;
    (A6 == 3), assert(fact(urgencia_em_defecar)), resultado;
    (A6 == 4), assert(fact(nauseas_vomitos)), resultado;
    (A6 == 5), assert(fact(dificuldade_respirar)), resultado;
    (A6 == 6), assert(fact(respiracao_rapida_curta)), resultado;
    (A6 == 7), assert(fact(tosse)), resultado;
    (A6 == 8), assert(fact(aperto_peito)), resultado;
    (A6 == 9), assert(fact(visao_desfocada)), resultado;
    (A6 == 10), assert(fact(tonturas)), resultado;
    (A6 == 11), assert(fact(sangramento_nasal)), resultado;
    (A6 == 12), assert(fact(dor_de_cabeca)), resultado;
    (A6 == 13), assert(fact(sensibilidade_luz)), resultado;
    (A6 == 14), assert(fact(febre)), resultado;
    (A6 == 15), assert(fact(congestao_nasal)), resultado;
    (A6 == 16), assert(fact(dores_musculares)), resultado;
    (A6 == 17), assert(fact(dor_de_garganta)), resultado;
    (A6 == 18), assert(fact(dificuldade_em_engolir)), resultado;
    (A6 == 19), assert(fact(rouquidao)), resultado;
    (A6 == 20), assert(fact(nariz_entupido)), resultado;
    (A6 == 21), assert(fact(espirros)), resultado;
    (A6 == 22), assert(fact(coceira_olhos)), resultado;
    (A6 == 23), assert(fact(coceira_garganta)), resultado;
    (A6 == 24), assert(fact(azia)), resultado;
    (A6 == 25), assert(fact(regurgitacao)), resultado;
    (A6 == 26), assert(fact(dor_lombar)), resultado;
    (A6 == 27), assert(fact(dormencia_gluteos_pernas)), resultado;
    (A6 == 28), assert(fact(dificuldade_em_adormecer)), resultado;
    (A6 == 29), assert(fact(acordar_cedo_demais)), resultado;
    (A6 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), resultado;
    (A6 == 31), assert(fact(sensacao_de_sono_nao_reparador)), resultado;
    (A6 == 32), assert(fact(diminuicao_da_flexibilidade)), resultado;
    (A6 == 33), assert(fact(sensacao_de_fadiga)), resultado).

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
            write('     TRATAMENTO ACONSELHADO: '),perfil(P),nl,nl,
            write('********************************************************************************************************'),
            retractall(fact(_)).

