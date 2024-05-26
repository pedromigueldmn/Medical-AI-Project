%tratamento(tratamento,custo)
tratamento(start,0).
tratamento(paracetamol,5).
tratamento(brufen,4).
tratamento(aspirina,2).
tratamento(anti_histaminico,8).
tratamento(descanso,100).
tratamento(fisioterapia,150).
tratamento(cineterapia,200).
tratamento(desporto,0).
tratamento(cirurgia,1200).
tratamento(inalacoes,50).
tratamento(insulina,34).
tratamento(antibiotico,25).
tratamento(dieta,0).
tratamento(ginastica,90).
tratamento(internamento,250).
tratamento(dialise,100).
tratamento(calmante,80).
tratamento(injecoes,75).
tratamento(inalo_terapia,90).
tratamento(soro,15).
tratamento(oculos,500).
tratamento(lentes_contacto,300).
tratamento(ambulatorio,800).
tratamento(end,0).

%percurso(Tratamento_origem,Tratamento_destino,tempo_do_tratamento_destino)
/*
S1 - start
S2 - paracetamol
S3 - brufen
S4 - aspirina
S5 - anti_histaminico
S6 - descanso
S7 - fisioterapia
S8 - cineterapia
S9 - desporto
S10 - cirurgia
S11 - inalacoes
S12 - insulina
S13 - antibiotico
S14 - 
S15 - ginastica
S16 - 
S17 - calmante
S18 - injecoes
S19 - 
S20 - soro
*/



%start - 1
percurso(start,paracetamol,2).
percurso(start,brufen,3).
percurso(start,aspirina,4).
percurso(start,anti_histaminico,5).
percurso(start,descanso,2).

%paracetamol - 2
percurso(paracetamol,descanso,2).
percurso(paracetamol,fisioterapia,6).
percurso(paracetamol,cineterapia,8).
percurso(paracetamol,antibiotico,8).
percurso(paracetamol,oculos,1000).
percurso(paracetamol,lentes_contacto,200).

%brufen - 3
percurso(brufen,descanso,2).
percurso(brufen,fisioterapia,6).
percurso(brufen,desporto,12).
percurso(brufen,ginastica,15).
percurso(brufen,oculos,1000).
percurso(brufen,lentes_contacto,200).

%aspirina - 4
percurso(aspirina,inalacoes,10).
percurso(aspirina,insulina,30).
percurso(aspirina,antibiotico,8).
percurso(aspirina,dieta,30).
percurso(aspirina,oculos,1000).
percurso(aspirina,lentes_contacto,200).


%##################################################################################################################################

%anti_histaminico - 5
percurso(anti_histaminico,antibiotico,8).
percurso(anti_histaminico,oculos,3).

%descanso - 6
percurso(descanso,cineterapia,8).
percurso(descanso,oculos,1000).
percurso(descanso,lentes_contacto,200).

%fisioterapia - 7
percurso(fisioterapia,cirurgia,3).
percurso(fisioterapia,ginastica,15).
percurso(fisioterapia,calmante,90).
percurso(fisioterapia,injecoes,3).
percurso(fisioterapia,ambulatorio,20).

%cineterapia - 8                   
percurso(cineterapia,calmante,90).

%dieta   COMO TRATO DO CASO DA DIETA?
%percurso(dieta,ambulatorio,20).

%injeccoes - 18
percurso(injeccoes,inalo_terapia,6).
percurso(injeccoes,ambulatorio,20).

%calmante - 17
percurso(calmante,ambulatorio,20).

%inalacoes - 11
percurso(inalacoes,soro,8).

%insulina - 12
percurso(insulina,dialise,10).
percurso(insulina,injecoes,3).

%antibiotico 13
percurso(antibiotico,internamento,3).




%##################################################################################################################################





possibilidade_fim(start,fisioterapia).
possibilidade_fim(start,cineterapia).
possibilidade_fim(start,antibiotico).
possibilidade_fim(start,dieta).
possibilidade_fim(start,internamento).
possibilidade_fim(start,dialise).
possibilidade_fim(start,inalo_terapia).
possibilidade_fim(start,oculos).
possibilidade_fim(start,lentes_contacto).
possibilidade_fim(start,ambulatorio).

%Agora temos de fazer os prdicados para calcular o custo total e um para 
% o tempo total que demora um percurso completo

%Depois de verificarmos que tudo está a funcionar bem, temos de fazer o resto
%dos percursos tendo em conta o grafo do professor