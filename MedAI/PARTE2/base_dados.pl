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
percurso(aspirina,soro,8).
percurso(aspirina,oculos,1000).
percurso(aspirina,lentes_contacto,200).

%anti_histaminico - 5
percurso(anti_histaminico,antibiotico,8).
percurso(anti_histaminico,internamento,3).

%descanso - 6
percurso(descanso,cineterapia,8).
percurso(descanso,oculos,1000).
percurso(descanso,lentes_contacto,200).

%fisioterapia - 7
percurso(fisioterapia,end,0).
percurso(fisioterapia,cirurgia,3).
percurso(fisioterapia,ginastica,15).
percurso(fisioterapia,calmante,90).
percurso(fisioterapia,injecoes,3).
percurso(fisioterapia,ambulatorio,20).

%cineterapia - 8           
percurso(cineterapia,end,0).        
percurso(cineterapia,calmante,90).

%Desporto - 9
percurso(desporto,dieta,30).
percurso(desporto,calmante,90).

%Cirurgia - 10
percurso(cirurgia,internamento,3).
percurso(cirurgia,soro,8).

%Inalações - 11
percurso(inalacoes,soro,8).

%Insulina - 12
percurso(insulina,dialise,10).
percurso(insulina,injecoes,3).

%Antibiótico - 13
percurso(antibiotico,internamento,3).

%Dieta - 14
percurso(dieta,end,0).

%Ginástica - 15
percurso(ginastica,ambulatorio,20).

%Internamento - 16
percurso(internamento,end,0).

%Diálise - 17
percurso(internamento,end,0).

%Calmante - 18
percurso(calmante,ambulatorio,20).

%Injecoes - 19
percurso(injeccoes,inalo_terapia,6).
percurso(injeccoes,ambulatorio,20).

%Inalo-Terapia - 20
percurso(inalo_terapia,end,0).

%Soro - 21
percurso(soro,ambulatorio,20).

%Óculos - 22
percurso(oculos,end,0).

%Lentes Contacto - 23
percurso(lentes_contacto,end,0).

%Ambulatório - 24
percurso(ambulatorio,end,0).



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
