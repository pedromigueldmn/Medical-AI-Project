:-encoding(utf8).

%diarreia
if 'urgencia_em_defecar' and 'colicas' then 1.
if 'urgencia_em_defecar' and 'gases' and 'nauseas_vomitos' then 2.
if 'colicas' and 'gases' and 'nauseas_vomitos'  3.

%asma
if 'dificuldade_respirar' and 'respiracao_rapida_curta' then 4.
if 'dificuldade_respirar' and 'tosse' and 'aperto_peito' then 5.
if 'respiracao_rapida_curta' and 'tosse' and 'aperto_peito' then 6.

%tensao_arterial
if 'aperto_peito' and 'tonturas'  7.
if 'aperto_peito' and 'sangramento_nasal' and 'visao_desfocada'  8.
if 'tonturas' and 'sangramento_nasal' and 'visao_desfocada'  9.

%enxaqueca
if 'dor_de_cabeca' and 'nauseas_vomitos'  10.
if 'dor_de_cabeca' and 'sensibilidade_luz' and 'visao_desfocada'  11.
if 'nauseas_vomitos' and 'sensibilidade_luz' and 'visao_desfocada'  12.

%gripe
if 'dor_de_cabeca' and 'febre' then 13.
if 'dor_de_cabeca' and 'dores_musculares' and 'congestao_nasal' then 14.
if 'febre' and 'dores_musculares' and 'congestao_nasal' then 15.

%faringite
if 'dor_de_garganta' and 'dificuldade_em_engolir'  16.
if 'dor_de_garganta' and 'tosse' and 'rouquidao'  17.
if 'dificuldade_em_engolir' and 'rouquidao' and 'tosse'  18.

%constipacao
if 'nariz_entupido' and 'espirros'  19.
if 'nariz_entupido' and 'febre' and 'dor_abdominal'  20.
if 'espirros' and 'febre' and 'dor_abdominal'  21.

%rinite_alergica
if 'coceira_garganta' and 'espirros'  22.
if 'espirros' and 'nariz_entupido' and 'coceira_nos_olhos'  23.
if 'coceira_garganta' and 'nariz_entupido' and 'coceira_nos_olhos'  24.

%refluxo_gastroesofagico
if 'azia' and 'regurgitacao'  25.
if 'azia' and 'nauseas_vomitos' and 'dificuldade_em_engolir'  26.
if 'regurgitacao' and 'nauseas_vomitos' and 'dificuldade_em_engolir'  27.

%lombalgia
if 'dor_na_regiao_lombar' and 'dormencia_gluteos_pernas'  28.
if 'dor_na_regiao_lombar' and 'diminuicao_da_flexibilidade' and 'sensacao_de_fadiga'  29.
if 'dormencia_gluteos_pernas' and 'diminuicao_da_flexibilidade' and 'sensacao_de_fadiga'  30.

%insonias
if 'dificuldade_em_adormecer' and 'acordar_frequentemente_durante_a_noite'  31.
if 'dificuldade_em_adormecer' and 'acordar_cedo_demais' and 'sensacao_de_sono_nao_reparador'  32.
if 'acordar_frequentemente_durante_a_noite' and 'acordar_cedo_demais' and 'sensacao_de_sono_nao_reparador'  33.



% c:comprimido x:xarope spray:s 
% intervalo_idade: 0-3(bebe)  4-10(crianca)  11-17(adolescente)  18+(adulto)
% perfil(1):- procurartratamentos(doenca,intervalo_idade,gravida_pode_tomar,tipo_de_farmacologico)


