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
           (   (A1 == 1), assert(idade('0-3')), assert(gravida('n')), questao4;
               (A1 == 2), assert(idade('4-10')),assert(gravida('n')), questao4;
               (A1 == 3), assert(idade('11-17')),questao2;
               (A1 == 4), assert(idade('18+')),questao2).

questao2:- write('********************************************************************************************************'), nl,
           write('**  Qual o seu gênero?'), nl,
           write('**  1 - Feminino'), nl,
           write('**  2 - Masculino'), nl, nl,
           read(A2),
           (   (A2 == 1), questao3;
               (A2 == 2),assert(gravida('n')),questao4).

questao3:- write('********************************************************************************************************'), nl,
           write('**  Está grávida?'), nl,
           write('**  1 - Sim'), nl,
           write('**  2 - Não'), nl, nl,
           read(A3),
           (   (A3 == 1), assert(gravida('s')), questao4;
               (A3 == 2), assert(gravida('n')),questao4).

questao4:- write('********************************************************************************************************'), nl,
            write('**  Tem preferência por algum tipo de farmacológico?'), nl,
            write('**  1 - Sim'), nl,
            write('**  2 - Não'), nl, nl,
            read(A4),
            (   (A4 == 1), questao5;
                (A4 == 2), assert(farma(_)),questao6).

questao5:- write('********************************************************************************************************'), nl,
            write('**  Qual o tipo de framacológico que prefere?'), nl,
            write('**  1 - Xarope'), nl,
            write('**  2 - Gotas'), nl,
            write('**  3 - Comprimido'), nl,
            write('**  4 - Spray'), nl, nl,
            read(A5),
            (   (A5 == 1), assert(farma('x')), questao6;
                (A5 == 2), assert(farma('g')), questao6;
                (A5 == 3), assert(farma('c')), questao6;
                (A5 == 4), assert(farma('sp')), questao6).


questao6:- write('********************************************************************************************************'), nl,
    write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
    write_sintomas,
    read(A6),
    (
        (A6 == 1), assert(fact(gases)), questao7;
        (A6 == 2), assert(fact(colicas)), questao7;
        (A6 == 3), assert(fact(urgencia_em_defecar)), questao7;
        (A6 == 4), assert(fact(nauseas_vomitos)), questao7;
        (A6 == 5), assert(fact(dificuldade_respirar)), questao7;
        (A6 == 6), assert(fact(respiracao_rapida_curta)), questao7;
        (A6 == 7), assert(fact(tosse)), questao7;
        (A6 == 8), assert(fact(aperto_peito)), questao7;
        (A6 == 9), assert(fact(visao_desfocada)), questao7;
        (A6 == 10), assert(fact(tonturas)), questao7;
        (A6 == 11), assert(fact(sangramento_nasal)), questao7;
        (A6 == 12), assert(fact(dor_de_cabeca)), questao7;
        (A6 == 13), assert(fact(sensibilidade_luz)), questao7;
        (A6 == 14), assert(fact(febre)), questao7;
        (A6 == 15), assert(fact(congestao_nasal)), questao7;
        (A6 == 16), assert(fact(dores_musculares)), questao7;
        (A6 == 17), assert(fact(dor_de_garganta)), questao7;
        (A6 == 18), assert(fact(dificuldade_em_engolir)), questao7;
        (A6 == 19), assert(fact(rouquidao)), questao7;
        (A6 == 20), assert(fact(nariz_entupido)), questao7;
        (A6 == 21), assert(fact(espirros)), questao7;
        (A6 == 22), assert(fact(coceira_nos_olhos)), questao7;
        (A6 == 23), assert(fact(coceira_garganta)), questao7;
        (A6 == 24), assert(fact(azia)), questao7;
        (A6 == 25), assert(fact(regurgitacao)), questao7;
        (A6 == 26), assert(fact(dor_na_regiao_lombar)), questao7;
        (A6 == 27), assert(fact(dormencia_gluteos_pernas)), questao7;
        (A6 == 28), assert(fact(dificuldade_em_adormecer)), questao7;
        (A6 == 29), assert(fact(acordar_cedo_demais)), questao7;
        (A6 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), questao7;
        (A6 == 31), assert(fact(sensacao_de_sono_nao_reparador)), questao7;
        (A6 == 32), assert(fact(diminuicao_da_flexibilidade)), questao7;
        (A6 == 33), assert(fact(sensacao_de_fadiga)), questao7;
        (A6 == 34), assert(fact(dor_abdominal)), questao7;
        (A6 == 35), assert(fact(inchaco_na_garganta)), questao7;
        (A6 == 36), assert(fact(garganta_vermelha)), questao7;
        (A6 == 37), assert(fact(ardor_ao_urinar)), questao7;
        (A6 == 38), assert(fact(urgencia_urinaria)), questao7;
        (A6 == 39), assert(fact(urina_turva)), questao7;
        (A6 == 40), assert(fact(dor_de_ouvido)), questao7;
        (A6 == 41), assert(fact(perda_auditiva_temporaria)), questao7;
        (A6 == 42), assert(fact(dor_ao_mastigar)), questao7).


        questao7:- write('********************************************************************************************************'), nl,
        write('**  Que sintomas está a experienciar? Selecione três sintomas, um de cada vez:'), nl,
        write_sintomas,
        read(A7),
        (
        (A7 == 1), assert(fact(gases)), questao8;
        (A7 == 2), assert(fact(colicas)), questao8;
        (A7 == 3), assert(fact(urgencia_em_defecar)), questao8;
        (A7 == 4), assert(fact(nauseas_vomitos)), questao8;
        (A7 == 5), assert(fact(dificuldade_respirar)), questao8;
        (A7 == 6), assert(fact(respiracao_rapida_curta)), questao8;
        (A7 == 7), assert(fact(tosse)), questao8;
        (A7 == 8), assert(fact(aperto_peito)), questao8;
        (A7 == 9), assert(fact(visao_desfocada)), questao8;
        (A7 == 10), assert(fact(tonturas)), questao8;
        (A7 == 11), assert(fact(sangramento_nasal)), questao8;
        (A7 == 12), assert(fact(dor_de_cabeca)), questao8;
        (A7 == 13), assert(fact(sensibilidade_luz)), questao8;
        (A7 == 14), assert(fact(febre)), questao8;
        (A7 == 15), assert(fact(congestao_nasal)), questao8;
        (A7 == 16), assert(fact(dores_musculares)), questao8;
        (A7 == 17), assert(fact(dor_de_garganta)), questao8;
        (A7 == 18), assert(fact(dificuldade_em_engolir)), questao8;
        (A7 == 19), assert(fact(rouquidao)), questao8;
        (A7 == 20), assert(fact(nariz_entupido)), questao8;
        (A7 == 21), assert(fact(espirros)), questao8;
        (A7 == 22), assert(fact(coceira_nos_olhos)), questao8;
        (A7 == 23), assert(fact(coceira_garganta)), questao8;
        (A7 == 24), assert(fact(azia)), questao8;
        (A7 == 25), assert(fact(regurgitacao)), questao8;
        (A7 == 26), assert(fact(dor_lombar)), questao8;
        (A7 == 27), assert(fact(dormencia_gluteos_pernas)), questao8;
        (A7 == 28), assert(fact(dificuldade_em_adormecer)), questao8;
        (A7 == 29), assert(fact(acordar_cedo_demais)), questao8;
        (A7 == 30), assert(fact(acordar_frequentemente_durante_a_noite)), questao8;
        (A7 == 31), assert(fact(sensacao_de_sono_nao_reparador)), questao8;
        (A7 == 32), assert(fact(diminuicao_da_flexibilidade)), questao8;
        (A7 == 33), assert(fact(sensacao_de_fadiga)), questao8;
        (A7 == 34), assert(fact(dor_abdominal)), questao8;
        (A7 == 35), assert(fact(inchaco_na_garganta)), questao8;
        (A7 == 36), assert(fact(garganta_vermelha)), questao8;
        (A7 == 37), assert(fact(ardor_ao_urinar)), questao8;
        (A7 == 38), assert(fact(urgencia_urinaria)), questao8;
        (A7 == 39), assert(fact(urina_turva)), questao8;
        (A7 == 40), assert(fact(dor_de_ouvido)), questao8;
        (A7 == 41), assert(fact(perda_auditiva_temporaria)), questao8;
        (A7 == 42), assert(fact(dor_ao_mastigar)), questao8).

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
    (A8 == 22), assert(fact(coceira_nos_olhos)), resultado;
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
    (A8 == 33), assert(fact(sensacao_de_fadiga)), resultado;
    (A8 == 34), assert(fact(dor_abdominal)), resultado;
    (A8 == 35), assert(fact(inchaco_na_garganta)), resultado;
    (A8 == 36), assert(fact(garganta_vermelha)), resultado;
    (A8 == 37), assert(fact(ardor_ao_urinar)), resultado;
    (A8 == 38), assert(fact(urgencia_urinaria)), resultado;
    (A8 == 39), assert(fact(urina_turva)), resultado;
    (A8 == 40), assert(fact(dor_de_ouvido)), resultado;
    (A8 == 41), assert(fact(perda_auditiva_temporaria)), resultado;
    (A8 == 42), assert(fact(dor_ao_mastigar)), resultado).


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
                write('**  33 - Sensação de fadiga'), nl,
                write('**  34 - Dor abdominal'), nl,
                write('**  35 - Inchaço na garganta'), nl,
                write('**  36 - Garganta inflamada'), nl,
                write('**  37 - Ardor ao urinar'), nl,
                write('**  38 - Urgencia urinária'), nl,
                write('**  39 - Urina turva'), nl,
                write('**  40 - Dor de ouvido'), nl,
                write('**  41 - Perda temporária de audição'), nl,
                write('**  42 - Dor ao mastigar'), nl,nl,
    true.

resultado:- write('********************************************************************************************************'), nl,
            write('**                                                                                                    **'), nl,
            write('**                                         Resultado Obtido                                           **'), nl,
            write('**                                                                                                    **'), nl,
            write('********************************************************************************************************'),nl,nl,
            result.


resultadowrite(P):- 
            idade(I),nl,
            gravida(G),nl,
            farma(T),nl,
            write('     TRATAMENTO ACONSELHADO: '),perfil(P,I,G,T),nl,nl,
            write('********************************************************************************************************'),
            retractall(idade(I)),retractall(gravida(G)),retractall(farma(T)),retractall(fact(_)).

