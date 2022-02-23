
/*********


BASE DE DADOS


*********/

definida_por('nome',
	'Meu nome é Zaunita. Pergunte me algo sobre League of Legends.').
definida_por('qual seu nome',
	'Meu nome é Zaunita. Pergunte me algo sobre League of Legends.').
definida_por('como voce se chama',
	'Meu nome é Zaunita. Pergunte me algo sobre League of Legends.').

definida_por('thresh', 
	'Thresh é um campeão que tem um chicote.').
definida_por('o que thresh diria para mim', 
	'Gritar não lhe trará nada de bom, mas é música para os meus ouvidos.').
definida_por('chicote', 
	'Cuidado com thresh, ele pode lhe aprisionar').
definida_por('quem é o melhor thresh de manaus', 
	'leandro, mais conhecido como im your senpai. PRATA V 0 pdl. Só hook de trivela').
	
definida_por('quem é jinx', 
	'é uma zaunita assim como eu, mas diferente de mim ela é um pouco esquentadinha').
definida_por('jinx',
	'melhor não mexer com ela').

definida_por('com quem posso me meter',
	'o teemo é bem baixinho, mas mesmo assim é perigoso').

definida_por('bardo', 
	'Bardo é um andarilho que toca uma flauta mágica').

definida_por('gragas',
	'Se voce pagar eu to dentroo').

definida_por('gp', 
	'Barriiil').
definida_por('barril', 
	'Conheci um pirata que falaria exatamente isso.').

definida_por('qual o campeão mais rapido na base 1?',
	'Master Yi').

definida_por('camille',
	'Camille é a chefe de inteligência do Clã Ferros').

definida_por('orianna',
	'Sua criação foi uma máquina assassina a quem Corin deu o mesmo nome da filha').

definida_por('quem é o melhor jogador do meu bairro',
	'leandro senpai, ouvi falar que ele é o melhor thresh da casa dele.').

definida_por('jucimar', 
	'Jucimar é o professor desta matéria').

definida_por('uea', 
	'UEA é uma universidade localizada no Amazonas').

definida_por('vasco da grana', 
	'vaxco é o maior time do Brasil').

definida_por('brasil', 
	'Brasil é um país localizado na América do Sul').

definida_por('inter', 
	'Inter já foi rebaixado em 2016').

definida_por('palmeiras', 
	'Palmeiras não possui mundial').

definida_por('spotify', 
	'Aplicativo essencial para a vida de qualquer estudante').

definida_por('luffy',
	'Rei dos piratas').


definida_por('fim',
	'Até a próxima! Foi um prazer poder te ajudar!').

definida_por('naodefinido',
	'Não tenho conhecimento sobre isso!').

/***********

CICLO

********/

bot_rede:-
	format('Saudações! Eu sou o EuClides.'),nl,
	format('Voce deseja saber: '),nl,
	repeat,
	nl, format('- '),
	read(Entrada),
	consulta_base_dados(Entrada, Resposta),
	format(Resposta), nl,
	encerra_sessao(Entrada).
	
consulta_base_dados(Entrada, RespostaCorreta) :- definida_por(Entrada, RespostaCorreta), ! ; definida_por('naodefinido', RespostaCorreta).	
	
	
encerra_sessao(Entrada):-
	Entrada = ('fim').
	
	
:- bot_rede.