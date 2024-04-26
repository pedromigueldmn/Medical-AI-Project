
%diarreia
if 'urgencia_em_defecar' and 'colicas' then 1.
if 'urgencia_em_defecar' and 'gases' and 'nauseas_vomitos' then 2.
if 'colicas' and 'gases' and 'nauseas_vomitos' then 3.

%asma
if 'dificuldade_respirar' and 'respiracao_rapida_curta' then 4.
if 'dificuldade_respirar' and 'tosse' and 'aperto_peito' then 5.
if 'respiracao_rapida_curta' and 'tosse' and 'aperto_peito' then 6.

%tensao_arterial
if 'aperto_peito' and 'tonturas' then 7.
if 'aperto_peito' and 'sangramento_nasal' and 'visao_desfocada' then 8.
if 'tonturas' and 'sangramento_nasal' and 'visao_desfocada' then 9.

%enxaqueca
if 'dor_de_cabeca' and 'nauseas_vomitos' then 10.
if 'dor_de_cabeca' and 'sensibilidade_luz' and 'visao_desfocada' then 11.
if 'nauseas_vomitos' and 'sensibilidade_luz' and 'visao_desfocada' then 12.

%gripe
if 'dor_de_cabeca' and 'febre' then 13.
if 'dor_de_cabeca' and 'dores_musculares' and 'congestao_nasal' then 14.
if 'febre' and 'dores_musculares' and 'congestao_nasal' then 15.

%faringite
if 'dor_de_garganta' and 'dificuldade_em_engolir' then 16.
if 'dor_de_garganta' and 'tosse' and 'rouquidao' then 17.
if 'dificuldade_em_engolir' and 'rouquidao' and 'tosse' then 18.

%constipacao
if 'nariz_entupido' and 'espirros' then 19.
if 'nariz_entupido' and 'febre' and 'dor_abdominal' then 20.
if 'espirros' and 'febre' and 'dor_abdominal' then 21.

%rinite_alergica
if 'coceira_garganta' and 'espirros' then 22.
if 'espirros' and 'nariz_entupido' and 'coceira_nos_olhos' then 23.
if 'coceira_garganta' and 'nariz_entupido' and 'coceira_nos_olhos' then 24.

%refluxo_gastroesofagico
if 'azia' and 'regurgitacao' then 25.
if 'azia' and 'nauseas_vomitos' and 'dificuldade_em_engolir' then 26.
if 'regurgitacao' and 'nauseas_vomitos' and 'dificuldade_em_engolir' then 27.

%lombalgia
if 'dor_na_regiao_lombar' and 'dormencia_gluteos_pernas' then 28.
if 'dor_na_regiao_lombar' and 'diminuicao_da_flexibilidade' and 'sensacao_de_fadiga' then 29.
if 'dormencia_gluteos_pernas' and 'diminuicao_da_flexibilidade' and 'sensacao_de_fadiga' then 30.

%insonias
if 'dificuldade_em_adormecer' and 'acordar_frequentemente_durante_a_noite' then 31.
if 'dificuldade_em_adormecer' and 'acordar_cedo_demais' and 'sensacao_de_sono_nao_reparador' then 32.
if 'acordar_frequentemente_durante_a_noite' and 'acordar_cedo_demais' and 'sensacao_de_sono_nao_reparador' then 33.

%amigdalite
if 'inchaco_na_garganta' and 'garganta_vermelha' then 34.
if 'inchaco_na_garganta' and 'dificuldade_em_engolir' and 'dor_de_garganta' then 35.
if 'garganta_vermelha' and 'dificuldade_em_engolir' and 'dor_de_garganta' then 36.

%infeção urinaria 
if 'ardor_ao_urinar' and 'urgência_urinária' then 37.
if 'ardor_ao_urinar' and 'dor_abdominal' and 'urina_turva' then 38.
if 'urgência_urinária' and 'dor_abdominal' and 'urina_turva' then 39.

%otite
if 'dor_de_ouvido' and 'febre' then 40.
if 'dor_de_ouvido' and 'perda_auditiva_temporaria' and 'dor_ao_mastigar' then 41.
if 'febre' and 'perda_auditiva_temporaria' and 'dor_ao_mastigar' then 42.

%pneumonia
if 'tosse' and 'febre' then 43.
if 'tosse' and 'dificuldade_respiratoria' and 'dor_no_peito' then 44.
if 'febre' and 'dificuldade_respiratoria' and 'dor_no_peito' then 45.

% c:comprimido x:xarope spray:s 
% intervalo_idade: 0-3(bebe)  4-10(crianca)  11-17(adolescente)  18+(adulto)
% perfil(1):- procurartratamentos(doenca,intervalo_idade,gravida_pode_tomar,tipo_de_farmacologico)


