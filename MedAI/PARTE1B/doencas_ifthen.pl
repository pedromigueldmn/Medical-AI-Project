:- dynamic (<==)/2.

doenca_nao_infeciosa <== [
    [alteracoes_pele=nao, hereditaria=nao, faixa_etaria=adolescente],
    [alteracoes_pele=nao, hereditaria=nao, faixa_etaria=crianca],
    [alteracoes_pele=nao, hereditaria=sim, febre=nao],
    [alteracoes_pele=sim, febre=nao]
].

doenca_infeciosa <== [
    [alteracoes_pele=nao, hereditaria=nao, faixa_etaria=adulto, alteracoes_humor_comportamento=nao],
    [alteracoes_pele=nao, hereditaria=nao, faixa_etaria=adulto_jovem],
    [alteracoes_pele=nao, hereditaria=nao, faixa_etaria=idoso],
    [alteracoes_pele=nao, hereditaria=nao, faixa_etaria=meia_idade],
    [alteracoes_pele=nao, hereditaria=sim, febre=sim],
    [alteracoes_pele=sim, febre=sim]
].