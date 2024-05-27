
% ----------------------------------------------------- EXPLICAÇÃO ESQUEMA -----------------------------------------------------

%doenca(nome,[sintomas],[soluçoes(nome,intervalo_idade,dose,descricao,gravida_pode_tomar,tipo_de_farmacologico)],link)
%tipo_de_farmacológico: spray = s, comprimido = c, xarope = x, g-gotas
%gravida_pode_tomar: s- sim, n- não
%intervalo_idade: 0-3, 4-10, 11-17, 18+    (representam bebés, crianças, adolescentes e adultos)


doenca('faringite',
    ['dor_de_garganta', 'dificuldade_em_engolir', 'tosse', 'rouquidao'],
    [
    % Tratamentos para 0-3 anos
    farmacologico('paracetamol', '0-3', '120mg', 'Tomar 5 mL de xarope a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'x'),
    farmacologico('paracetamol', '0-3', '120mg', 'Tomar 1.2 mL de gotas a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'c'),
    farmacologico('dipirona', '0-3', '50mg/mL', 'Tomar a cada 6 horas pode aliviar a dor e a febre, em forma de gotas.', 'n', 'g'),

    % Tratamentos para 4-10 anos
        farmacologico('ibuprofeno', '4-10', '100mg', 'Tomar a cada 6-8 horas ajuda a reduzir a dor e a inflamação na garganta.', 'n', 'c'),
        farmacologico('paracetamol', '4-10', '250mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'c'),
        farmacologico('benzidamina', '4-10', 'spray', 'Aplicar diretamente na garganta conforme a necessidade, pode ser usado por todas as idades acima de 4 anos para aliviar a dor de garganta.', 's', 's'),

    % Tratamentos para 11-17 anos
        farmacologico('ibuprofeno', '11-17', '200mg', 'Tomar a cada 6-8 horas ajuda a reduzir a dor e a inflamação na garganta.', 'n', 'c'),
        farmacologico('paracetamol', '11-17', '500mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'c'),
            
    % Tratamentos para 18+ anos
        farmacologico('ibuprofeno', '18+', '400-600mg', 'Tomar a cada 6-8 horas ajuda a reduzir a dor e a inflamação na garganta.', 'n', 'c'),
        farmacologico('paracetamol', '18+', '1000mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'c'),
        farmacologico('naproxeno', '18+', '250-500mg', 'Tomar a cada 12 horas pode ajudar a reduzir a dor e a inflamação na garganta.', 'n', 'c'),
            
    % Tratamentos não farmacológicos (gerais)
        naofarmacologico('gargarejo_com_agua_sal', 'Gargarejar com uma solução de água morna e sal várias vezes ao dia pode ajudar a aliviar a dor de garganta.'),
        naofarmacologico('repouso', 'Manter um bom repouso ajuda o corpo a combater a infecção.'),
        naofarmacologico('ingestao_de_liquidos', 'Beber líquidos em abundância ajuda a manter a garganta hidratada e alivia a dor.'),
        naofarmacologico('umidificador', 'Manter o ar úmido pode ajudar a aliviar a dor de garganta em ambientes seco1s.')
    ],
    'https://www.cuf.pt/saude-a-z/faringite').
    
    
doenca('constipacao',
['nariz_entupido', 'espirros', 'febre', 'dor_abdominal'],
[
    % Tratamentos para 0-3 anos
     farmacologico('pseudoefedrina', '0-3', '7.5mg', 'Tomar a cada 6 horas para aliviar a congestão nasal.', 'n', 'x'),
     farmacologico('dextrometorfano', '0-3', '2.5mg', 'Tomar a cada 4 horas para suprimir a tosse seca.', 'n', 'x'),
     farmacologico('guafenesis', '0-3', '50mg', 'Tomar a cada 4 horas para ajudar na expectoração do muco.', 's', 'x'),
     farmacologico('paracetamol', '0-3', '120mg', 'Tomar a cada 4-6 horas para aliviar a febre e a dor.', 's', 'x'),
     farmacologico('fluticasona', '0-3', '27.5 mcg', 'Aplicar um spray em cada narina uma vez ao dia para aliviar a congestão nasal.', 's', 'sp'),

    % Tratamentos para 4-10 anos
     farmacologico('pseudoefedrina', '4-10', '15mg', 'Tomar a cada 6 horas para aliviar a congestão nasal.', 'n', 'x'),
     farmacologico('dextrometorfano', '4-10', '5mg', 'Tomar a cada 4 horas para suprimir a tosse seca.', 'n', 'x'),
     farmacologico('guafenesis', '4-10', '100mg', 'Tomar a cada 4 horas para ajudar na expectoração do muco.', 's', 'x'),
     farmacologico('ibuprofeno', '4-10', '100mg', 'Tomar a cada 6-8 horas para aliviar a febre e a dor.', 'n', 'x'),

    % Tratamentos para 11-17 anos
     farmacologico('pseudoefedrina', '11-17', '30mg', 'Tomar a cada 6 horas para aliviar a congestão nasal.', 'n', 'c'),
     farmacologico('dextrometorfano', '11-17', '10mg', 'Tomar a cada 4 horas para suprimir a tosse seca.', 'n', 'c'),
     farmacologico('guafenesis', '11-17', '200mg', 'Tomar a cada 4 horas para ajudar na expectoração do muco.', 's', 'c'),
     farmacologico('paracetamol', '11-17', '500mg', 'Tomar a cada 4-6 horas para aliviar a febre e a dor.', 's', 'c'),

    % Tratamentos para 18+ anos
     farmacologico('pseudoefedrina', '18+', '60mg', 'Tomar a cada 6 horas para aliviar a congestão nasal.', 'n', 'c'),
     farmacologico('dextrometorfano', '18+', '20mg', 'Tomar a cada 4 horas para suprimir a tosse seca.', 'n', 'c'),
     farmacologico('guafenesis', '18+', '400mg', 'Tomar a cada 4 horas para ajudar na expectoração do muco.', 's', 'c'),
     farmacologico('ibuprofeno', '18+', '400mg', 'Tomar a cada 6-8 horas para aliviar a dor e a inflamação.', 'n', 'c'),
     farmacologico('loratadina', '18+', '10mg', 'Tomar uma vez ao dia para aliviar os sintomas de alergia associados à constipação.', 's', 'c'),

    % Tratamentos não farmacológicos (gerais)
     naofarmacologico('hidratacao', 'Manter-se hidratado é crucial, especialmente ao combater uma constipação.'),
     naofarmacologico('repouso', 'O repouso ajuda o corpo a combater a infecção mais eficazmente.'),
     naofarmacologico('umidificador', 'Usar um umidificador pode aliviar o nariz entupido e a irritação na garganta.'),
     naofarmacologico('lavagem_nasal_com_soro', 'A lavagem nasal com soro fisiológico pode ajudar a aliviar a congestão nasal.'),
     naofarmacologico('evitar_contato_com_alergenos', 'Evitar exposição a alergenos e irritantes pode reduzir os espirros e o nariz entupido.')
],
'https://www.saudebemestar.pt/pt/medicina/pneumologia/resfriado-comum/').

    
doenca('rinite_alergica',
    ['coceira_garganta', 'espirros', 'coceira_nos_olhos', 'nariz_entupido'],
    [
    % Tratamentos para 0-3 anos
        farmacologico('loratadina', '0-3', '5mg', 'Tomar 2.5 mL de xarope ao dia para aliviar os sintomas da alergia, sem causar sonolência.', 's', 'x'),
        farmacologico('fluticasona', '0-3', '27.5 mcg', 'Aplicar um spray em cada narina uma vez ao dia para reduzir a inflamação.', 's', 'sp'),
        farmacologico('montelucaste', '0-3', '4mg', 'Tomar 2.5 mL de xarope ao dia à noite para controle da alergia.', 's', 'x'),
    
    % Tratamentos para 4-10 anos
        farmacologico('loratadina', '4-10', '10mg', 'Tomar um comprimido ao dia para aliviar os sintomas da alergia, sem causar sonolência.', 's', 'c'),
        farmacologico('cetirizina', '4-10', '5mg', 'Tomar um comprimido ao dia para controle dos sintomas alérgicos, pode causar sonolência.', 's', 'c'),
        farmacologico('fluticasona', '4-10', '50mcg por pulverização', 'Usar uma pulverização em cada narina uma vez ao dia para reduzir a inflamação.', 's', 'sp'),
        farmacologico('montelucaste', '4-10', '5mg', 'Tomar 5 mL de xarope ao dia à noite para controle da alergia.', 's', 'x'),
        
    % Tratamentos para 11-17 anos
        farmacologico('loratadina', '11-17', '10mg', 'Tomar um comprimido ao dia para aliviar os sintomas da alergia, sem causar sonolência.', 's', 'c'),
        farmacologico('cetirizina', '11-17', '10mg', 'Tomar um comprimido ao dia para controle dos sintomas alérgicos, pode causar sonolência.', 's', 'c'),
        farmacologico('fluticasona', '11-17', '50mcg por pulverização', 'Usar uma pulverização em cada narina uma vez ao dia para reduzir a inflamação.', 's', 'sp'),
        farmacologico('azelastina', '11-17', '137 mcg', 'Pulverizar uma vez em cada narina duas vezes ao dia. Não recomendado para grávidas.', 'n', 'sp'),
        
    % Tratamentos para 18+ anos
        farmacologico('loratadina', '18+', '10mg', 'Tomar um comprimido ao dia para aliviar os sintomas da alergia, sem causar sonolência.', 's', 'c'),
        farmacologico('cetirizina', '18+', '10mg', 'Tomar um comprimido ao dia para controle dos sintomas alérgicos, pode causar sonolência.', 's', 'c'),
        farmacologico('fluticasona', '18+', '50mcg por pulverização', 'Usar uma pulverização em cada narina uma vez ao dia para reduzir a inflamação.', 's', 'sp'),
        farmacologico('spray_nasal_de_ipratropio', '18+', 'Dose conforme indicado', 'Aplicar no nariz para aliviar a coriza excessiva. Não recomendado para grávidas.', 'n', 'sp'),
        farmacologico('azelastina', '18+', '137 mcg', 'Pulverizar uma vez em cada narina duas vezes ao dia. Não recomendado para grávidas.', 'n', 'sp'),
        
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('lavagem_nasal_com_soro', 'Lavar as narinas com solução salina pode ajudar na remoção dos alérgenos e aliviar a congestão.'),
        naofarmacologico('evitar_alergenos', 'Evitar contato com os alérgenos conhecidos, como pólen e pelo de animais, para minimizar os sintomas.'),
        naofarmacologico('umidificador', 'Usar um umidificador pode ajudar a manter as vias nasais hidratadas e aliviar os sintomas da rinite alérgica.')
    ],
    'https://www.saudebemestar.pt/pt/clinica/otorrino/rinite-alergica/').

doenca('diarreia',
    ['urgencia_em_defecar','colicas','gases', 'nauseas_vomitos'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('loperamida', '0-3', 'Dose inicial: 2mg', 'depois 2mg após cada evacuação não formada, sem ultrapassar 6mg/dia. Ajustar baseado na resposta e orientação médica.', 's', 'x'),
        farmacologico('pepto_bismol', '0-3', '10ml', 'Ingerir 8 doses por dia da quantidade indicada vai ajudar a aliviar os sintomas da diarreia, bem como náuseas, azia e indigestão.', 's', 'x'),
        farmacologico('lactobacillus_acidophilus', '0-3', '1 cápsula', 'Ingerir o número de cápsulas indicado por dia, ajuda a restaurar o equilíbrio das bactérias intestinais e aliviar os sintomas da diarreia.', 's', 'x'),
              
        % Tratamentos para 4-10 anos
        farmacologico('loperamida', '4-10', 'Dose inicial: 2mg', 'depois 2mg após cada evacuação não formada, sem ultrapassar 8mg/dia. Ajustar baseado na resposta e orientação médica.', 's', 'c'),
        farmacologico('pepto_bismol', '4-10', '15ml', 'Ingerir 8 doses por dia da quantidade indicada vai ajudar a aliviar os sintomas da diarreia, bem como náuseas, azia e indigestão.', 's', 'x'),
        farmacologico('lactobacillus_acidophilus', '4-10', '2 cápsulas', 'Ingerir o número de cápsulas indicado por dia, ajuda a restaurar o equilíbrio das bactérias intestinais e aliviar os sintomas da diarreia.', 's', 'c'),
             
        % Tratamentos para 11-17 anos
        farmacologico('loperamida', '11-17', 'Dose inicial: 2mg', 'depois 2mg após cada evacuação não formada, sem ultrapassar 8mg/dia. Ajustar baseado na resposta e orientação médica.', 's', 'c'),
        farmacologico('pepto_bismol', '11-17', '15ml', 'Ingerir 8 doses por dia da quantidade indicada vai ajudar a aliviar os sintomas da diarreia, bem como náuseas, azia e indigestão.', 's', 'x'),
        farmacologico('lactobacillus_acidophilus', '11-17', '2 cápsulas', 'Ingerir o número de cápsulas indicado por dia, ajuda a restaurar o equilíbrio das bactérias intestinais e aliviar os sintomas da diarreia.', 's', 'c'),
              
        % Tratamentos para 18+ anos
        farmacologico('loperamida', '18+', 'Dose inicial: 4mg', 'depois 2mg após cada evacuação não formada, sem ultrapassar 16mg/dia. Não exceder 16mg por dia. Ajustar baseado na resposta ao tratamento.', 's', 'c'),
        farmacologico('pepto_bismol', '18+', '30ml', 'Ingerir 8 doses por dia da quantidade indicada vai ajudar a aliviar os sintomas da diarreia, bem como náuseas, azia e indigestão.', 's', 'x'),
        farmacologico('lactobacillus_acidophilus', '18+', '2 cápsulas', 'Ingerir o número de cápsulas indicado por dia, ajuda a restaurar o equilíbrio das bactérias intestinais e aliviar os sintomas da diarreia.', 's', 'c'),
                
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('hidratacao', 'É essencial manter-se hidratado, pois a diarreia pode causar perda excessiva de líquidos e eletrólitos.'),
        naofarmacologico('alimentacao_leve', 'Opte por uma dieta leve e de fácil digestão, incluindo alimentos como arroz branco, bananas, torradas, maçãs cozidas, cenouras cozidas e frango cozido sem pele. Evite alimentos gordurosos, picantes, muito açucarados, lácteos, alimentos ricos em fibras e cafeína, pois podem piorar a diarreia.'),
        naofarmacologico('lavar_maos', 'Lave as mãos regularmente com água e sabão para evitar a propagação de germes que podem causar diarreia.')
    ],
    'https://www.msdmanuals.com/pt-pt/casa/distC3BArbios-digestivos/sintomas-de-distC3BArbios-digestivos/diarreia-em-adultos'
    ).
    
    
doenca('asma',
    ['dificuldade_respirar', 'respiracao_rapida_curta', 'tosse', 'aperto_peito'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('salbutamol', '0-3', '2 sprays', 'Utilizar 2 sprays por dia. Utilizado para aliviar sintomas respiratórios agudos, como falta de ar e aperto no peito, em condições como asma e DPOC.', 's', 'sp'),
                    
        % Tratamentos para 4-10 anos
        farmacologico('teofilina', '4-10', '200-600mg', 'Ingerir a quantidade indicada 2 vezes ao dia, ajuda a relaxar os músculos das vias respiratórias, facilitando a respiração.', 's', 'x'),
                    
        % Tratamentos para 11-17 anos
        farmacologico('formoterol', '11-17', '1 cápsula', 'Ingerir a quantidade indicada duas vezes por dia. Usado em combinação com corticosteroides inalados para controle a longo prazo da asma.', 's', 'c'),
        
        % Tratamentos para 18+ anos
        farmacologico('prednisona', '18+', '20mg', 'Ingerir a quantidade indicada uma vez por dia, pela manhã e em jejum, ajudam a prevenir ataques de asma e a reduzir a frequência e a gravidade dos sintomas.', 's', 'c'),
        farmacologico('formoterol', '18+', '2 cápsulas', 'Ingerir a quantidade indicada duas vezes por dia. Usado em combinação com corticosteroides inalados para controle a longo prazo da asma.', 's', 'c'),
                    
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('gerenciar_stress', 'O estresse pode desencadear sintomas de asma em algumas pessoas. Técnicas de gerenciamento do estresse, como meditação, yoga e respiração profunda, podem ser úteis.'),
        naofarmacologico('exercicios_respiratorios', 'Praticar exercícios de respiração pode ajudar a fortalecer os músculos respiratórios e melhorar o controle da respiração durante os ataques de asma.'),
        naofarmacologico('vacinas_gripe_pneumonia', 'A vacinação anual contra a gripe e a vacinação contra pneumonia pneumocócica são recomendadas para pessoas com asma, pois essas infecções respiratórias podem desencadear ou piorar os sintomas.'),
        naofarmacologico('evitar_gatilhos', 'Identificar e evitar os fatores desencadeantes conhecidos da asma, como alérgenos (pólen, ácaros, pelos de animais), poluentes do ar, fumaça de cigarro, exercícios vigorosos, entre outros.')
    ],
    'https://www.programasaudefacil.com.br/posts/o-que-e-asma-sintomas-e-tratamento').
        
doenca('tensao_arterial',
    ['aperto_peito','tonturas', 'sangramento_nasal','visao_desfocada'],
    [
                  
        % Tratamentos para idade de 11-17 anos
        farmacologico('losartan', '11-17', '50-100mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduz a pressão arterial.', 's', 'c'),
        farmacologico('amlodipina', '11-17', '5-10mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduzir a pressão arterial.', 's', 'c'),
        farmacologico('hidroclorotiazida', '11-17', '12.5-50mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a reduzir a quantidade de água e sal no organismo, o que diminui a pressão arterial.', 's', 'c'),
        farmacologico('atenolol', '11-17', '25-100mg', 'Ingerir a quantidade indicada uma vez por dia. Reduz a frequência cardíaca e diminui a pressão arterial.', 's', 'c'),
        farmacologico('lisinopril', '11-17', '2.5-5mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduzir a pressão arterial.', 's', 'c'),
        farmacologico('enalapril', '11-17', '2.5-5mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduzir a pressão arterial.', 's', 'c'),
                        
        % Tratamentos para idade acima de 18 anos
        farmacologico('losartan', '18+', '50-100mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduz a pressão arterial.', 's', 'c'),
        farmacologico('amlodipina', '18+', '5-10mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduzir a pressão arterial.', 's', 'c'),
        farmacologico('hidroclorotiazida', '18+', '12.5-50mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a reduzir a quantidade de água e sal no organismo, o que diminui a pressão arterial.', 's', 'c'),
        farmacologico('atenolol', '18+', '25-100mg', 'Ingerir a quantidade indicada uma vez por dia. Reduz a frequência cardíaca e diminui a pressão arterial.', 's', 'c'),
        farmacologico('lisinopril', '18+', '2.5-5mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduzir a pressão arterial.', 's', 'c'),
        farmacologico('enalapril', '18+', '2.5-5mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a relaxar os vasos sanguíneos e reduzir a pressão arterial.', 's', 'c'),
        farmacologico('propranolol', '18+', '20-40mg', 'Ingerir a quantidade indicada uma vez por dia. Reduz a frequência cardíaca e diminui a pressão arterial.', 's', 'c'),
        farmacologico('clortalidona', '18+', '12.5-25mg', 'Ingerir a quantidade indicada uma vez por dia. Ajuda a reduzir a quantidade de água e sal no organismo, o que diminui a pressão arterial.', 's', 'c'),
                        
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('manter_peso_saudavel', 'Manter um peso saudável pode ajudar a reduzir a pressão arterial e melhorar a saúde cardiovascular.'),
        naofarmacologico('diminuir_sal', 'Reduzir a ingestão de sal na dieta pode ajudar a diminuir a pressão arterial.'),
        naofarmacologico('exercicio_fisico', 'A prática regular de exercícios físicos, como caminhadas, natação ou ciclismo, pode ajudar a baixar a pressão arterial.'),
        naofarmacologico('alimentacao_saudavel', 'Uma dieta rica em frutas, vegetais, grãos integrais e proteínas magras pode ajudar a controlar a pressão arterial.')
    ],
    'https://www.sns24.gov.pt/tema/doencas-do-coracao/hipertensao-arterial/').
            

doenca('enxaqueca',
    ['dor_de_cabeca','nauseas_vomitos','sensibilidade_luz','visao_desfocada'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('paracetemol', '0-3', '10-15mg/kg', 'Ingerir quantidade indicada mg/kg a cada 4/6 horas, não excedendo 60mg/kg em 24 horas.', 's', 'x'),
                    
        % Tratamentos para 4-11 anos
        farmacologico('ibuprofeno', '4-11', '5-10mg/kg', 'Ingerir quantidade indicada mg/kg a cada 4/6 horas, não excedendo 40mg/kg em 24 horas.', 's', 'x'),
        farmacologico('paracetemol', '4-11', '10-15mg/kg', 'Ingerir quantidade indicada mg/kg a cada 4/6 horas, não excedendo 60mg/kg em 24 horas.', 's', 'x'),
                    
        % Tratamentos para 12-17 anos
        farmacologico('ibuprofeno', '12-17', '200-400mg', 'Ingerir quantidade indicada a cada 4/6 horas, não excedendo 1200mg em 24 horas.', 's', 'c'),
        farmacologico('sumatriptano', '12-17', '25-100mg', 'Não exceda 200mg em 24 horas.', 's', 'c'),
                    
        % Tratamentos para 18+ anos
        farmacologico('paracetemol', '18+', '500-1000mg', 'Ingerir quantidade indicada a cada 4/6 horas, não excedendo 4000mg em 24 horas.', 's', 'c'),
        farmacologico('ibuprofeno', '18+', '200-400mg', 'Ingerir quantidade indicada a cada 4/6 horas, não excedendo 1200mg em 24 horas.', 's', 'c'),
        farmacologico('sumatriptano', '18+', '25-100mg', 'Não exceda 200mg em 24 horas.', 's', 'c'),
                    
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('dieta', 'Manter uma dieta equilibrada e evitar alimentos conhecidos por desencadear enxaquecas em algumas pessoas, como queijos envelhecidos, chocolate, cafeína, alimentos processados e bebidas alcoólicas.'),
        naofarmacologico('exercicio_fisico', 'A prática regular de exercícios físicos, como caminhada, natação, ciclismo ou ioga, pode ajudar a reduzir a frequência e a intensidade das enxaquecas.'),
        naofarmacologico('qualidade_sono', 'Garantir uma boa higiene do sono pode ser crucial para prevenir enxaquecas. Isso inclui manter um horário de sono regular, criar um ambiente propício ao sono, evitar cafeína e eletrônicos antes de dormir e praticar técnicas de relaxamento para ajudar a adormecer.')
    ],
    'https://www.cuf.pt/mais-saude/aprenda-aliviar-os-sintomas-da-enxaqueca').
                
    
doenca('gripe',
    ['febre','dor_de_cabeca','congestao_nasal','dores_musculares'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('paracetemol', '0-3', '10-15mg/kg', 'Ingerir quantidade indicada mg/kg a cada 4/6 horas, não excedendo 60mg/kg em 24 horas.', 's', 'sp'),
                    
        % Tratamentos para 4-11 anos
        farmacologico('paracetemol', '4-11', '10-15mg/kg', 'Ingerir quantidade indicada mg/kg a cada 4/6 horas, não excedendo 60mg/kg em 24 horas.', 's', 'sp'),
        farmacologico('oseltamivir', '4-11', '30-75mg', 'Tomar 2 vezes ao dia durante 5 dias.', 's', 'c'),
        farmacologico('pseudoefedrina', '4-11', '30-60mg', 'Ingerir a dose recomendada a cada 4 a 6 horas e não exceder 240mg em 24 horas.', 's', 'c'),
                    
        % Tratamentos para 12-17 anos
        farmacologico('paracetemol', '12-17', '500-1000mg', 'Ingerir quantidade indicada a cada 4/6 horas, não excedendo 4000mg em 24 horas.', 's', 'c'),
        farmacologico('oseltamivir', '12-17', '75mg', 'Tomar 2 vezes ao dia durante 5 dias.', 's', 'c'),
        farmacologico('pseudoefedrina', '12-17', '60-120mg', 'Ingerir a dose recomendada a cada 4 a 6 horas e não exceder 240mg em 24 horas.', 's', 'c'),
                    
        % Tratamentos para 18+ anos
        farmacologico('paracetemol', '18+', '500-1000mg', 'Ingerir quantidade indicada a cada 4/6 horas, não excedendo 4000mg em 24 horas.', 's', 'c'),
        farmacologico('oseltamivir', '18+', '75mg', 'Tomar 2 vezes ao dia durante 5 dias.', 's', 'c'),
        farmacologico('pseudoefedrina', '18+', '60-120mg', 'Ingerir a dose recomendada a cada 4 a 6 horas e não exceder 240mg em 24 horas.', 's', 'c'),
                    
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('descanso_adequado', 'Descansar o suficiente permite que o sistema imunológico funcione de forma mais eficaz e ajuda o corpo a recuperar-se mais rapidamente.'),
        naofarmacologico('hidratacao', 'Beber bastantes líquidos, como água, sumos naturais, caldo de galinha ou bebidas isotônicas, pode ajudar a prevenir a desidratação e a parar o muco, aliviando os sintomas de congestão.'),
        naofarmacologico('inalacao_de_vapor', 'Pode tomar um banho quente ou usar um umidificador de ar para aumentar a umidade no ambiente.')
        ],
        'https://www.sns24.gov.pt/tema/doencas-infecciosas/gripe/').
                    

 
doenca('insonia',
        ['dificuldade_em_adormecer', 'acordar_frequentemente_durante_a_noite', 'acordar_cedo_demais', 'sensacao_de_sono_nao_reparador'],
        [
        % Tratamentos para 0-3 anos
        farmacologico('dipirona', '0-3', '50mg/mL', 'Tomar a cada 6 horas pode ajudar a aliviar desconfortos leves, sob supervisão médica.', 'n', 'x'),
    
        % Tratamentos para 4-10 anos
        farmacologico('melatonina', '4-10', '1mg', 'Tomar 1mg de melatonina uma hora antes de dormir pode ajudar a regular o sono das crianças.', 's', 'c'),
        farmacologico('dipirona', '4-10', '100mg', 'Tomar 100mg a cada 6 horas pode ajudar a aliviar a dor que interfere no sono.', 'n', 'g'),
    
        % Tratamentos para 11-17 anos
        farmacologico('melatonina', '11-17', '3mg', 'Tomar 3mg de melatonina uma hora antes de dormir pode ajudar adolescentes a regular seu ciclo de sono.', 's', 'c'),
        farmacologico('dipirona', '11-17', '500mg', 'Tomar 500mg a cada 6 horas pode ajudar a aliviar desconfortos que afetam o sono.', 'n', 'c'),
        farmacologico('doxilamina', '11-17', '12.5-25mg', 'Tomar 12.5-25mg de Doxilamina antes de dormir pode ajudar a promover o sono.', 'n', 'c'),
    
        % Tratamentos para 18+ anos
        farmacologico('zolpidem', '18+', '10mg', 'Tomar 10mg de Zolpidem antes de dormir pode ajudar a induzir o sono rapidamente.', 'n', 'c'),
        farmacologico('melatonina', '18+', '5mg', 'Tomar 5mg de melatonina uma hora antes de dormir pode ajudar a ajustar o relógio biológico.', 's', 'c'),
        farmacologico('dipirona', '18+', '1000mg', 'Tomar 1000mg de Dipirona a cada 6 horas pode aliviar dores que prejudicam o sono, sob supervisão médica.', 'n', 'c'),
        farmacologico('temazepam', '18+', '10-20mg', 'Tomar 10-20mg de Temazepam antes de dormir pode ajudar a manter o sono durante a noite.', 'n', 'c'),
        
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('higiene_do_sono', 'Manter um horário regular para dormir e acordar, evitar estimulantes como cafeína e dispositivos eletrônicos antes de dormir.'),
        naofarmacologico('terapia_cognitivo_comportamental_para_insonia', 'Participar de sessões de terapia cognitivo-comportamental especificamente para tratar insônia, para aprender a lidar com ansiedades e hábitos que prejudicam o sono.'),
        naofarmacologico('atividade_fisica_regular', 'Realizar atividades físicas regulares, preferencialmente na parte da manhã ou tarde, para melhorar a qualidade do sono.'),
        naofarmacologico('tecnicas_de_relaxamento', 'Praticar técnicas de relaxamento como meditação, respiração profunda ou ioga antes de dormir para ajudar a acalmar a mente e preparar o corpo para o sono.')
        ],
        'https://www.cuf.pt/saude-a-z/insonia').
    
    
doenca('lombalgia',
    ['dor_na_regiao_lombar', 'dormencia_gluteos_pernas', 'diminuicao_da_flexibilidade', 'sensacao_de_fadiga'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('paracetamol', '0-3', '120mg', 'Tomar 5 mL de xarope a cada 4-6 horas pode aliviar a dor na região lombar.', 's', 'x'),
        farmacologico('ibuprofeno', '0-3', '50mg/mL', 'Tomar 1.25 mL de suspensão a cada 6-8 horas pode ajudar a reduzir a inflamação e aliviar a dor.', 'n', 'g'),
    
        % Tratamentos para 4-10 anos
        farmacologico('paracetamol', '4-10', '250mg', 'Tomar um comprimido a cada 4-6 horas pode aliviar a dor na região lombar.', 's', 'c'),
        farmacologico('ibuprofeno', '4-10', '100mg', 'Tomar um comprimido a cada 6-8 horas pode ajudar a reduzir a dor e a inflamação.', 'n', 'c'),
    
        % Tratamentos para 11-17 anos
        farmacologico('paracetamol', '11-17', '500mg', 'Tomar um comprimido a cada 4-6 horas pode aliviar a dor lombar.', 's', 'c'),
        farmacologico('ibuprofeno', '11-17', '200mg', 'Tomar um comprimido a cada 6-8 horas pode reduzir a inflamação e aliviar a dor.', 'n', 'c'),
    
        % Tratamentos para 18+ anos
        farmacologico('ibuprofeno', '18+', '400-600mg', 'Tomar um comprimido a cada 6-8 horas pode ajudar a reduzir a dor e a inflamação na região lombar.', 'n', 'c'),
        farmacologico('naproxeno', '18+', '250-500mg', 'Tomar um comprimido a cada 12 horas pode ajudar a controlar a dor e a inflamação.', 'n', 'c'),
        farmacologico('paracetamol', '18+', '1000mg', 'Tomar um comprimido a cada 4-6 horas pode aliviar a dor lombar.', 's', 'c'),
        
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('exercicios_de_fortalecimento', 'Realizar exercícios de fortalecimento para a musculatura do core e da lombar pode ajudar a prevenir futuras dores.'),
        naofarmacologico('terapia_fisica', 'Sessões de fisioterapia com exercícios específicos para melhorar a flexibilidade e a força muscular na região lombar.'),
        naofarmacologico('aplicacao_de_calor', 'Aplicar calor na região afetada pode ajudar a relaxar os músculos e aliviar a dor.'),
        naofarmacologico('tecnicas_de_relaxamento', 'Praticar técnicas de relaxamento, como respiração profunda ou ioga, para ajudar a aliviar a tensão muscular e a dor.')
    ],
    'https://www.cuf.pt/saude-a-z/lombalgia').
    
doenca('refluxo_gastroesofagico',
    ['azia', 'regurgitacao', 'nauseas_vomitos', 'dificuldade_para_engolir'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('ranitidina', '0-3', '15mg/mL', 'Administrar 2 mL de xarope a cada 12 horas pode ajudar a reduzir a produção de ácido estomacal.', 's', 'x'),
        farmacologico('omeprazol', '0-3', '10mg', 'Administrar 10mg uma vez ao dia antes da primeira refeição pode ajudar a controlar o refluxo ácido.', 's', 'x'),
        farmacologico('algeldrato', '0-3', '30mg/mL', 'Administrar 5 mL de suspensão oral após as refeições e ao deitar pode neutralizar o ácido estomacal.', 's', 'x'),
    
        % Tratamentos para 4-10 anos
        farmacologico('ranitidina', '4-10', '75mg', 'Tomar um comprimido a cada 12 horas pode ajudar a reduzir a produção de ácido estomacal.', 's', 'c'),
        farmacologico('omeprazol', '4-10', '20mg', 'Tomar 20mg uma vez ao dia antes do café da manhã pode ajudar a controlar os sintomas de refluxo.', 's', 'c'),
        farmacologico('domperidona', '4-10', '5mg', 'Tomar 5mg três vezes ao dia antes das refeições pode ajudar a aumentar a motilidade gástrica.', 's', 'c'),
    
        % Tratamentos para 11-17 anos
        farmacologico('ranitidina', '11-17', '150mg', 'Tomar um comprimido a cada 12 horas pode ajudar a diminuir a acidez no estômago.', 's', 'c'),
        farmacologico('omeprazol', '11-17', '20mg', 'Tomar 20mg uma vez ao dia pode ajudar a controlar o refluxo gastroesofágico.', 's', 'c'),
        farmacologico('metoclopramida', '11-17', '10mg', 'Tomar 10mg antes das refeições e ao deitar pode melhorar os sintomas ao aumentar a motilidade do estômago.', 'n', 'c'),
    
        % Tratamentos para 18+ anos
        farmacologico('ranitidina', '18+', '150mg', 'Tomar um comprimido a cada 12 horas pode ajudar a reduzir a produção de ácido estomacal.', 's', 'c'),
        farmacologico('omeprazol', '18+', '40mg', 'Tomar 40mg uma vez ao dia antes do café da manhã pode controlar eficazmente o refluxo ácido.', 's', 'c'),
        farmacologico('esomeprazol', '18+', '40mg', 'Tomar 40mg uma vez ao dia pode fornecer alívio prolongado dos sintomas de refluxo.', 's', 'c'),
        farmacologico('alginato_de_sodio', '18+', '500mg', 'Tomar 10mL de suspensão após as refeições e ao deitar pode formar uma barreira protetora que impede o refluxo ácido.', 's', 'x'),
        
        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('mudancas_na_dieta', 'Evitar alimentos que desencadeiam o refluxo, como alimentos gordurosos, café, e chocolate.'),
        naofarmacologico('elevar_a_cabeca_da_cama', 'Elevar a cabeça da cama em 15 a 20 centímetros pode ajudar a prevenir o refluxo durante a noite.'),
        naofarmacologico('comer_reicoes_menores', 'Comer refeições menores e mais frequentes ao longo do dia em vez de três grandes refeições.'),
        naofarmacologico('evitar_comer_antes_de_deitar', 'Evitar comer nas três horas antes de deitar pode reduzir os episódios de refluxo noturno.')
    ],
    'https://www.cuf.pt/saude-a-z/refluxo-gastroesofagico').

doenca('amigdalite',
    ['inchaco_na_garganta', 'garganta_vermelha','dificuldade_em_engolir','dor_de_garganta'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('paracetamol', '0-3', '120mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'x'),
        farmacologico('paracetamol', '0-3', '120mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', ''),

        % Tratamentos para 4-10 anos
        farmacologico('ibuprofeno', '4-10', '100mg', 'Tomar a cada 6-8 horas ajuda a reduzir a dor e a inflamação na garganta.', 'n', 'c'),
        farmacologico('paracetamol', '4-10', '250mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'c'),
        farmacologico('amoxicilina', '4-10', '125mg', 'Tomar a cada 12 horas ajuda a tratar a infecção bacteriana associada à amigdalite.', 'n', 'c'),

        % Tratamentos para 11-17 anos
        farmacologico('ibuprofeno', '11-17', '200mg', 'Tomar a cada 6-8 horas ajuda a reduzir a dor e a inflamação na garganta.', 'n', 'c'),
        farmacologico('paracetamol', '11-17', '500mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'c'),
        farmacologico('amoxicilina', '11-17', '250mg', 'Tomar a cada 12 horas ajuda a tratar a infecção bacteriana associada à amigdalite.', 'n', 'c'),

        % Tratamentos para 18+ anos
        farmacologico('ibuprofeno', '18+', '400-600mg', 'Tomar a cada 6-8 horas ajuda a reduzir a dor e a inflamação na garganta.', 'n', 'c'),
        farmacologico('paracetamol', '18+', '1000mg', 'Tomar a cada 4-6 horas pode aliviar a dor de garganta e a febre.', 's', 'c'),
        farmacologico('amoxicilina', '18+', '500mg', 'Tomar a cada 8 horas ajuda a tratar a infecção bacteriana associada à amigdalite.', 'n', 'c'),

        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('gargarejo_com_agua_sal', 'Gargarejar com uma solução de água morna e sal várias vezes ao dia pode ajudar a aliviar a dor de garganta.'),
        naofarmacologico('repouso', 'Manter um bom repouso ajuda o corpo a combater a infecção.'),
        naofarmacologico('ingestao_de_liquidos', 'Beber líquidos em abundância ajuda a manter a garganta hidratada e alivia a dor.'),
        naofarmacologico('umidificador', 'Manter o ar úmido pode ajudar a aliviar a dor de garganta em ambientes secos.')
    ],
    'https://www.mayoclinic.org/diseases-conditions/tonsillitis/symptoms-causes/syc-20378479').

doenca('infecao_urinária',
    ['ardor_ao_urinar', 'urgencia_urinaria', 'dor_abdominal', 'urina_turva'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('amoxicilina', '0-3', '100mg', 'Tomar a cada 12 horas ajuda a tratar a infecção urinária em bebês e crianças pequenas.', 'n', 'c'),

        % Tratamentos para 4-10 anos
        farmacologico('amoxicilina', '4-10', '250mg', 'Tomar a cada 12 horas ajuda a tratar a infecção urinária em crianças.', 'n', 'c'),
        farmacologico('cefalexina', '4-10', '250mg', 'Tomar a cada 6 horas pode ser necessário em casos de infecção mais grave.', 'n', 'c'),

        % Tratamentos para 11-17 anos
        farmacologico('ciprofloxacino', '11-17', '500mg', 'Tomar a cada 12 horas é uma opção para infecções urinárias em adolescentes.', 'n', 'c'),
        farmacologico('nitrofurantoína', '11-17', '100mg', 'Tomar a cada 6 horas pode ser necessário em casos de infecção mais grave.', 'n', 'c'),

        % Tratamentos para 18+ anos
        farmacologico('ciprofloxacino', '18+', '500mg', 'Tomar a cada 12 horas é uma opção comum para infecções urinárias em adultos.', 'n', 'c'),
        farmacologico('nitrofurantoína', '18+', '100mg', 'Tomar a cada 6 horas pode ser necessário em casos de infecção mais grave.', 'n', 'c'),

        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('aumentar_ingestao_de_agua', 'Beber muita água ajuda a diluir a urina e a eliminar bactérias.'),
        naofarmacologico('evitar_alimentos_irritantes', 'Evitar alimentos e bebidas irritantes, como cafeína, álcool e alimentos condimentados, pode ajudar a reduzir a irritação da bexiga.'),
        naofarmacologico('urinar_após_relacoes_sexuais', 'Urinar logo após a relação sexual ajuda a limpar as bactérias da uretra, reduzindo o risco de infecção urinária.')
    ],
    'https://www.mayoclinic.org/diseases-conditions/urinary-tract-infection/symptoms-causes/syc-20353447').

doenca('otite',
    ['dor_de_ouvido', 'febre', 'perda_auditiva_temporaria', 'dor_ao_mastigar'],
    [
        % Tratamentos para 0-3 anos
        farmacologico('amoxicilina', '0-3', '125mg', 'Tomar a cada 12 horas ajuda a tratar a infecção bacteriana associada à otite em bebês e crianças pequenas.', 'n', 'c'),
        farmacologico('paracetamol', '0-3', '120mg', 'Tomar 5 mL de xarope a cada 4-6 horas pode ajudar a aliviar a dor e a febre.', 's', 'x'),

        % Tratamentos para 4-10 anos
        farmacologico('amoxicilina', '4-10', '250mg', 'Tomar a cada 12 horas ajuda a tratar a infecção bacteriana associada à otite em crianças.', 'n', 'c'),
        farmacologico('paracetamol', '4-10', '250mg', 'Tomar a cada 4-6 horas pode ajudar a aliviar a dor e a febre.', 's', 'c'),

        % Tratamentos para 11-17 anos
        farmacologico('amoxicilina', '11-17', '500mg', 'Tomar a cada 12 horas ajuda a tratar a infecção bacteriana associada à otite em adolescentes.', 'n', 'c'),
        farmacologico('ibuprofeno', '11-17', '200mg', 'Tomar a cada 6-8 horas pode ajudar a aliviar a dor e a febre.', 'n', 'c'),

        % Tratamentos para 18+ anos
        farmacologico('amoxicilina', '18+', '500mg', 'Tomar a cada 8 horas ajuda a tratar a infecção bacteriana associada à otite em adultos.', 'n', 'c'),
        farmacologico('ibuprofeno', '18+', '400-600mg', 'Tomar a cada 6-8 horas pode ajudar a aliviar a dor e a febre.', 'n', 'c'),

        % Tratamentos não farmacológicos (gerais)
        naofarmacologico('compressa_quente', 'Aplicar uma compressa quente sobre a orelha afetada pode aliviar a dor.'),
        naofarmacologico('repouso', 'Descansar pode ajudar o corpo a se recuperar mais rapidamente.'),
        naofarmacologico('evitar_insercao_de_objetos_na_orelha', 'Evitar inserir objetos na orelha pode prevenir lesões adicionais e infecções.')
    ],
    'https://www.mayoclinic.org/diseases-conditions/ear-infections/symptoms-causes/syc-20351616').

% Predicado principal que procura doenças com base em sintomas e filtros específicos
procurardoenca(Sintoma1, Sintoma2, Sintoma3, Idade, Gravida, TipoFarmacologico) :-
    findall(
        Doenca-TratamentosFiltrados,
        (
            doenca(Doenca, SintomasDaDoenca, Tratamentos, Link),
            member(Sintoma1, SintomasDaDoenca),
            member(Sintoma2, SintomasDaDoenca),
            member(Sintoma3, SintomasDaDoenca),
            filtrar_tratamentos(Tratamentos, Idade, Gravida, TipoFarmacologico, TratamentosFiltrados)
        ),
        Resultados
    ),
    remover_duplicatas(Resultados, ResultadosUnicos),
    imprimir_resultados(ResultadosUnicos).

% Remover duplicatas da lista de resultados
remover_duplicatas([], []).
remover_duplicatas([X|Xs], Resultado) :-
    member(X, Xs), !,
    remover_duplicatas(Xs, Resultado).
remover_duplicatas([X|Xs], [X|Resultado]) :-
    remover_duplicatas(Xs, Resultado).

% Filtrar tratamentos com base em idade, estado de gravidez e tipo farmacológico
filtrar_tratamentos(Tratamentos, Idade, Gravida, TipoFarmacologico, TratamentosFiltrados) :-
    include(
        farmacologicos(Idade, Gravida, TipoFarmacologico),
        Tratamentos,
        TratamentosFiltradosTemp
    ),
    include(
        nao_farmacologicos,
        Tratamentos,
        TratamentosNaoFarmacologicos
    ),
    (   TratamentosFiltradosTemp = []
    ->  TratamentosFiltrados = TratamentosNaoFarmacologicos
    ;   append(TratamentosFiltradosTemp, TratamentosNaoFarmacologicos, TratamentosFiltrados)
    ).

% Predicado para validar soluções farmacológicas conforme restrições
farmacologicos(Idade, Gravida, TipoFarmacologico, Solucao) :-
    Solucao = farmacologico(_, IdadeNecessaria, _, _, Gravida_Pode_Tomar, TipoFarmacologico_Doencas),
    IdadeNecessaria = Idade,
    TipoFarmacologico_Doencas = TipoFarmacologico,
    (
        (Gravida = 's') -> Gravida_Pode_Tomar = 's'
        ; (Gravida = 'n') -> Gravida_Pode_Tomar = _
    ).

% Predicado para filtrar tratamentos não farmacológicos
nao_farmacologicos(Solucao) :-
    Solucao = naofarmacologico(_, _).

% Função para imprimir os resultados de forma estruturada e esteticamente agradável
imprimir_resultados([]).
imprimir_resultados([Doenca-Tratamentos|Resto]) :-
    doenca(Doenca, Sintomas, _, Link),
    writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'),
    format('A sua doença é: ~w~n', [Doenca]),
    format('Sintomas frequentes de ~w são: ~w~n~n', [Doenca, Sintomas]),
    separar_tratamentos(Tratamentos, Farmacologicos, NaoFarmacologicos),
    writeln('TRATAMENTOS FARMACOLÓGICOS:'),
    imprimir_tratamentos(Farmacologicos),
    writeln('TRATAMENTOS NÃO FARMACOLÓGICOS:'),
    imprimir_tratamentos(NaoFarmacologicos),
    format('Esperamos que se sinta melhor. Caso queira saber mais sobre ~w, pode encontrar mais informações em: ~w~n', [Doenca, Link]),
    writeln('~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~'),
    imprimir_resultados(Resto).

% Separar tratamentos farmacológicos e não farmacológicos
separar_tratamentos([], [], []).
separar_tratamentos([farmacologico(Nome, Idade, Dose, Descricao, Gravida_Pode_Tomar, Tipo)|Resto], [farmacologico(Nome, Idade, Dose, Descricao, Gravida_Pode_Tomar, Tipo)|Farmacologicos], NaoFarmacologicos) :-
    separar_tratamentos(Resto, Farmacologicos, NaoFarmacologicos).
separar_tratamentos([naofarmacologico(Tipo, Descricao)|Resto], Farmacologicos, [naofarmacologico(Tipo, Descricao)|NaoFarmacologicos]) :-
    separar_tratamentos(Resto, Farmacologicos, NaoFarmacologicos).

% Função auxiliar para imprimir detalhes de cada tratamento
imprimir_tratamentos([]).
imprimir_tratamentos([farmacologico(Nome, Idade, Dose, Descricao, Gravida_Pode_Tomar, Tipo)|Resto]) :-
    format('    Nome: ~w~n', [Nome]),
    format('    Idade: ~w~n', [Idade]),
    format('    Dose: ~w~n', [Dose]),
    format('    Descrição: ~w~n', [Descricao]),
    format('    Aconselhado para grávidas: ~w~n', [Gravida_Pode_Tomar]),
    format('    Tipo: ~w~n~n', [Tipo]),
    imprimir_tratamentos(Resto).
imprimir_tratamentos([naofarmacologico(Tipo, Descricao)|Resto]) :-
    format('    Tratamento: ~w~n', [Tipo]),
    format('    Descrição: ~w~n~n', [Descricao]),
    imprimir_tratamentos(Resto).






perfil(1, I, G, T) :- procurardoenca('urgencia_em_defecar', 'colicas', 'gases', I, G, T).
perfil(2, I, G, T) :- procurardoenca('urgencia_em_defecar', 'colicas', 'nauseas_vomitos', I, G, T).
perfil(3, I, G, T) :- procurardoenca('urgencia_em_defecar', 'gases', 'nauseas_vomitos', I, G, T).
perfil(4, I, G, T) :- procurardoenca('colicas', 'gases', 'nauseas_vomitos', I, G, T).

perfil(5, I, G, T) :- procurardoenca('dificuldade_respirar', 'respiracao_rapida_curta', 'aperto_peito', I, G, T).
perfil(6, I, G, T) :- procurardoenca('dificuldade_respirar', 'respiracao_rapida_curta', 'tosse', I, G, T).
perfil(7, I, G, T) :- procurardoenca('dificuldade_respirar', 'tosse', 'aperto_peito', I, G, T).
perfil(8, I, G, T) :- procurardoenca('respiracao_rapida_curta', 'tosse', 'aperto_peito', I, G, T).

perfil(9, I, G, T) :- procurardoenca('aperto_peito', 'tonturas', 'visao_desfocada', I, G, T).
perfil(10, I, G, T) :- procurardoenca('aperto_peito', 'tonturas', 'sangramento_nasal', I, G, T).
perfil(11, I, G, T) :- procurardoenca('aperto_peito', 'sangramento_nasal', 'visao_desfocada', I, G, T).
perfil(12, I, G, T) :- procurardoenca('tonturas', 'sangramento_nasal', 'visao_desfocada', I, G, T).

perfil(13, I, G, T) :- procurardoenca('dor_de_cabeca', 'nauseas_vomitos', 'visao_desfocada', I, G, T).
perfil(14, I, G, T) :- procurardoenca('dor_de_cabeca', 'nauseas_vomitos', 'sensibilidade_luz', I, G, T).
perfil(15, I, G, T) :- procurardoenca('dor_de_cabeca', 'sensibilidade_luz', 'visao_desfocada', I, G, T).
perfil(16, I, G, T) :- procurardoenca('nauseas_vomitos', 'sensibilidade_luz', 'visao_desfocada', I, G, T).

perfil(17, I, G, T) :- procurardoenca('dor_de_cabeca', 'febre', 'congestao_nasal', I, G, T).
perfil(18, I, G, T) :- procurardoenca('dor_de_cabeca', 'febre', 'dores_musculares', I, G, T).
perfil(19, I, G, T) :- procurardoenca('dor_de_cabeca', 'dores_musculares', 'congestao_nasal', I, G, T).
perfil(20, I, G, T) :- procurardoenca('febre', 'dores_musculares', 'congestao_nasal', I, G, T).

perfil(21, I, G, T) :- procurardoenca('dor_de_garganta', 'dificuldade_em_engolir', 'rouquidao', I, G, T).
perfil(22, I, G, T) :- procurardoenca('dor_de_garganta', 'dificuldade_em_engolir', 'tosse', I, G, T).
perfil(23, I, G, T) :- procurardoenca('dor_de_garganta', 'tosse', 'rouquidao', I, G, T).
perfil(24, I, G, T) :- procurardoenca('dificuldade_em_engolir', 'rouquidao', 'tosse', I, G, T).

perfil(25, I, G, T) :- procurardoenca('nariz_entupido', 'espirros', 'dor_abdominal', I, G, T).
perfil(26, I, G, T) :- procurardoenca('nariz_entupido', 'espirros', 'febre', I, G, T).
perfil(27, I, G, T) :- procurardoenca('nariz_entupido', 'febre', 'dor_abdominal', I, G, T).
perfil(28, I, G, T) :- procurardoenca('espirros', 'febre', 'dor_abdominal', I, G, T).

perfil(29, I, G, T) :- procurardoenca('coceira_garganta', 'espirros', 'coceira_nos_olhos', I, G, T).
perfil(30, I, G, T) :- procurardoenca('coceira_garganta', 'espirros', 'nariz_entupido', I, G, T).
perfil(31, I, G, T) :- procurardoenca('espirros', 'nariz_entupido', 'coceira_nos_olhos', I, G, T).
perfil(32, I, G, T) :- procurardoenca('coceira_garganta', 'nariz_entupido', 'coceira_nos_olhos', I, G, T).

perfil(33, I, G, T) :- procurardoenca('azia', 'regurgitacao', 'dificuldade_em_engolir', I, G, T).
perfil(34, I, G, T) :- procurardoenca('azia', 'regurgtiacao', 'nauseas_vomitos', I, G, T).
perfil(35, I, G, T) :- procurardoenca('azia', 'nauseas_vomitos', 'dificuldade_em_engolir', I, G, T).
perfil(36, I, G, T) :- procurardoenca('regurgitacao', 'nauseas_vomitos', 'dificuldade_em_engolir', I, G, T).

perfil(37, I, G, T) :- procurardoenca('dor_na_regiao_lombar', 'dormencia_gluteos_pernas', 'sensacao_de_fadiga', I, G, T).
perfil(38, I, G, T) :- procurardoenca('dor_na_regiao_lombar', 'dormencia_gluteos_pernas', 'diminuicao_da_flexibilidade', I, G, T).
perfil(39, I, G, T) :- procurardoenca('dor_na_regiao_lombar', 'diminuicao_da_flexibilidade', 'sensacao_de_fadiga', I, G, T).
perfil(40, I, G, T) :- procurardoenca('dormencia_gluteos_pernas', 'diminuicao_da_flexibilidade', 'sensacao_de_fadiga', I, G, T).

perfil(41, I, G, T) :- procurardoenca('dificuldade_em_adormecer', 'acordar_frequentemente_durante_a_noite', 'sensacao_de_sono_nao_reparador', I, G, T).
perfil(42, I, G, T) :- procurardoenca('dificuldade_em_adormecer', 'acordar_frequentemente_durante_a_noite', 'acordar_cedo_demais', I, G, T).
perfil(43, I, G, T) :- procurardoenca('dificuldade_em_adormecer', 'acordar_cedo_demais', 'sensacao_de_sono_nao_reparador', I, G, T).
perfil(44, I, G, T) :- procurardoenca('acordar_frequentemente_durante_a_noite', 'acordar_cedo_demais', 'sensacao_de_sono_nao_reparador', I, G, T).

perfil(45, I, G, T) :- procurardoenca('inchaco_na_garganta', 'garganta_vermelha', 'dor_de_garganta', I, G, T).
perfil(46, I, G, T) :- procurardoenca('inchaco_na_garganta', 'garganta_vermelha', 'dificuldade_em_engolir', I, G, T).
perfil(47, I, G, T) :- procurardoenca('inchaco_na_garganta', 'dificuldade_em_engolir', 'dor_de_garganta', I, G, T).
perfil(48, I, G, T) :- procurardoenca('garganta_vermelha', 'dificuldade_em_engolir', 'dor_de_garganta', I, G, T).

perfil(49, I, G, T) :- procurardoenca('ardor_ao_urinar', 'urgência_urinária', 'urina_turva', I, G, T).
perfil(50, I, G, T) :- procurardoenca('ardor_ao_urinar', 'urgência_urinária', 'dor_abdominal', I, G, T).
perfil(51, I, G, T) :- procurardoenca('ardor_ao_urinar', 'dor_abdominal', 'urina_turva', I, G, T).
perfil(52, I, G, T) :- procurardoenca('urgência_urinária', 'dor_abdominal', 'urina_turva', I, G, T).

perfil(53, I, G, T) :- procurardoenca('dor_de_ouvido', 'febre', 'dor_ao_mastigar', I, G, T).
perfil(54, I, G, T) :- procurardoenca('dor_de_ouvido', 'febre', 'perda_auditiva_temporaria', I, G, T).
perfil(55, I, G, T) :- procurardoenca('dor_de_ouvido', 'perda_auditiva_temporaria', 'dor_ao_mastigar', I, G, T).
perfil(56, I, G, T) :- procurardoenca('febre', 'perda_auditiva_temporaria', 'dor_ao_mastigar', I, G, T).


