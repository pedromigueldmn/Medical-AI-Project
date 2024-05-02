%diarreia
if 'urgencia_em_defecar' and 'colicas' and 'gases' then 1.
if 'urgencia_em_defecar' and 'colicas' and 'nauseas_vomitos' then 2.
if 'urgencia_em_defecar' and 'gases' and 'nauseas_vomitos' then 3.
if 'colicas' and 'gases' and 'nauseas_vomitos' then 4.

%asma
if 'dificuldade_respirar' and 'respiracao_rapida_curta' and 'aperto_peito' then 5.
if 'dificuldade_respirar' and 'respiracao_rapida_curta' and 'tosse' then 6.
if 'dificuldade_respirar' and 'tosse' and 'aperto_peito' then 7.
if 'respiracao_rapida_curta' and 'tosse' and 'aperto_peito' then 8.

%tensao_arterial
if 'aperto_peito' and 'tonturas' and 'visao_desfocada' then 9.
if 'aperto_peito' and 'tonturas' and 'sangramento_nasal' then 10.
if 'aperto_peito' and 'sangramento_nasal' and 'visao_desfocada' then 11.
if 'tonturas' and 'sangramento_nasal' and 'visao_desfocada' then 12.

%enxaqueca
if 'dor_de_cabeca' and 'nauseas_vomitos' and 'visao_desfocada' then 13.
if 'dor_de_cabeca' and 'nauseas_vomitos' and 'sensibilidade_luz' then 14.
if 'dor_de_cabeca' and 'sensibilidade_luz' and 'visao_desfocada' then 15.
if 'nauseas_vomitos' and 'sensibilidade_luz' and 'visao_desfocada' then 16.

%gripe
if 'dor_de_cabeca' and 'febre' and 'congestao_nasal' then 17.
if 'dor_de_cabeca' and 'febre' and 'dores_musculares' then 18.
if 'dor_de_cabeca' and 'dores_musculares' and 'congestao_nasal' then 19.
if 'febre' and 'dores_musculares' and 'congestao_nasal' then 20.

%faringite
if 'dor_de_garganta' and 'dificuldade_em_engolir' and 'rouquidao' then 21.
if 'dor_de_garganta' and 'dificuldade_em_engolir' and 'tosse' then 22.
if 'dor_de_garganta' and 'tosse' and 'rouquidao' then 23.
if 'dificuldade_em_engolir' and 'rouquidao' and 'tosse' then 24.

%constipacao
if 'nariz_entupido' and 'espirros' and 'dor_abdominal'then 25.
if 'nariz_entupido' and 'espirros' and 'febre'then 26.
if 'nariz_entupido' and 'febre' and 'dor_abdominal' then 27.
if 'espirros' and 'febre' and 'dor_abdominal' then 28.

%rinite_alergica
if 'coceira_garganta' and 'espirros' and 'coceira_nos_olhos' then 29.
if 'coceira_garganta' and 'espirros' and 'nariz_entupido' then 30.
if 'espirros' and 'nariz_entupido' and 'coceira_nos_olhos' then 31.
if 'coceira_garganta' and 'nariz_entupido' and 'coceira_nos_olhos' then 32.

%refluxo_gastroesofagico
if 'azia' and 'regurgitacao' and 'dificuldade_em_engolir' then 33.
if 'azia' and 'regurgtiacao' and 'nauseas_vomitos' then 34.
if 'azia' and 'nauseas_vomitos' and 'dificuldade_em_engolir' then 35.
if 'regurgitacao' and 'nauseas_vomitos' and 'dificuldade_em_engolir' then 36.

%lombalgia
if 'dor_na_regiao_lombar' and 'dormencia_gluteos_pernas' and 'sensacao_de_fadiga' then 37.
if 'dor_na_regiao_lombar' and 'dormencia_gluteos_pernas' and 'diminuicao_da_flexibilidade' then 38.
if 'dor_na_regiao_lombar' and 'diminuicao_da_flexibilidade' and 'sensacao_de_fadiga' then 39.
if 'dormencia_gluteos_pernas' and 'diminuicao_da_flexibilidade' and 'sensacao_de_fadiga' then 40.

%insonias
if 'dificuldade_em_adormecer' and 'acordar_frequentemente_durante_a_noite' and 'sensacao_de_sono_nao_reparador' then 41.
if 'dificuldade_em_adormecer' and 'acordar_frequentemente_durante_a_noite' and 'acordar_cedo_demais' then 42.
if 'dificuldade_em_adormecer' and 'acordar_cedo_demais' and 'sensacao_de_sono_nao_reparador' then 43.
if 'acordar_frequentemente_durante_a_noite' and 'acordar_cedo_demais' and 'sensacao_de_sono_nao_reparador' then 44.

%amigdalite
if 'inchaco_na_garganta' and 'garganta_vermelha' and 'dor_de_garganta' then 45.
if 'inchaco_na_garganta' and 'garganta_vermelha' and 'dificuldade_em_engolir' then 46.
if 'inchaco_na_garganta' and 'dificuldade_em_engolir' and 'dor_de_garganta' then 47.
if 'garganta_vermelha' and 'dificuldade_em_engolir' and 'dor_de_garganta' then 48.

%infeção urinaria 
if 'ardor_ao_urinar' and 'urgência_urinária' and 'urina_turva' then 49.
if 'ardor_ao_urinar' and 'urgência_urinária' and 'dor_abdominal' then 50.
if 'ardor_ao_urinar' and 'dor_abdominal' and 'urina_turva' then 51.
if 'urgência_urinária' and 'dor_abdominal' and 'urina_turva' then 52.

%otite
if 'dor_de_ouvido' and 'febre' and 'dor_ao_mastigar' then 53.
if 'dor_de_ouvido' and 'febre' and 'perda_auditiva_temporaria' then 54.
if 'dor_de_ouvido' and 'perda_auditiva_temporaria' and 'dor_ao_mastigar' then 55.
if 'febre' and 'perda_auditiva_temporaria' and 'dor_ao_mastigar' then 56.
