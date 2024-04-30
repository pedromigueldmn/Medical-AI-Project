:- dynamic (<==)/2.

doenca_infeciosa<==[
    [idade > 66.5],
    [idade <= 66.5, febre=nao, idade <= 53, genero=feminino, idade > 8.5],
    [idade <= 66.5, febre=sim, idade > 35.5],
    [idade <= 66.5, febre=sim, idade <= 35.5, faixa_etaria=adulto],
    [idade <= 66.5, febre=sim, idade <= 35.5, faixa_etaria=adulto_jovem],
    [idade <= 66.5, febre=sim, idade <= 35.5, faixa_etaria=crianca]
].

doenca_nao_infeciosa <== [
    [idade <= 66.5, febre=nao, idade > 53],
    [idade <= 66.5, febre=nao, idade <= 53, genero=feminino, idade <= 8.5],
    [idade <= 66.5, febre=nao, idade <= 53, genero=masculino],
    [idade <= 66.5, febre=nao, idade <= 53, genero=nao_binario],
    [idade <= 66.5, febre=sim, idade <= 35.5, faixa_etaria=adolescente]
].