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
percurso(start,paracetamol,2).
percurso(paracetamol,descanso,2).
percurso(descanso,cineterapia,8).
percurso(cineterapia,end,0).
percurso(cineterapia,calmante,90).
percurso(calmante,ambulatorio,20).
percurso(ambulatorio,end,0).

percurso(start,brufen,3).
percurso(brufen,fisioterapia,6).
percurso(fisioterapia,end,0).
percurso(fisioterapia,cirurgia,3).
percurso(cirurgia,internamento,3).
percurso(internamento,end,0).


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