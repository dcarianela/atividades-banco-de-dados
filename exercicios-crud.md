# Praticando CRUD

## Adicionando generos, filmes e detalhes ao Catalago de Filmes

```sql
INSERT INTO generos (nome) VALUES('Terror'),('Fantasia'),('Ação'),('Ficção Científica');

INSERT INTO filmes(titulo, lancamento, genero_id)
VALUES(
    'Interestelar',
    '2014-11-06',
    4
),
(
    'Invocação do Mal',
    '2013-09-13',
    1
),
(
    'Vingadores: Ultimato',
    '2019-04-25',
    3
);

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id)
VALUE(
    169,
    'Em um futuro em que a Terra está morrendo devido a uma série de desastres ambientais, Cooper (Matthew McConaughey), um ex-piloto da NASA, se junta a uma equipe de cientistas em uma missão para encontrar um novo lar para a humanidade. Usando um buraco de minhoca, eles viajam por diferentes planetas em busca de um novo planeta habitável, enfrentando desafios no espaço e na física do tempo e gravidade.',
    677471239,
    165000000,
    1
),
(
    181,
    'O filme é o encerramento da Saga do Infinito no Universo Cinematográfico Marvel. Após os eventos de Vingadores: Guerra Infinita (2018), onde Thanos exterminou metade da população do universo com o estalar de dedos, os Vingadores sobreviventes se unem para tentar reverter os danos causados. Eles traçam um plano para viajar no tempo, coletar as Joias do Infinito e usar o poder delas para restaurar o que foi perdido. No entanto, o caminho é cheio de obstáculos e sacrifícios, culminando em uma batalha épica contra Thanos.',
    2798000000,
    356000000,
    3
),
(
    112,
    'Invocação do Mal é um filme de terror baseado em eventos reais que segue os famosos investigadores paranormais Ed e Lorraine Warren. O casal é chamado para ajudar uma família que está sendo aterrorizada por forças sobrenaturais em sua casa. Conforme eles investigam, descobrem que a residência está sendo invadida por uma entidade demoníaca, e os Warren devem fazer tudo o que for necessário para proteger a família e conter o mal. O filme é o primeiro de uma série de sucessos baseados nos casos reais dos Warrens.',
    319500000,
    20000000,
    2
);
```

---

### Algumas adições

```sql
INSERT INTO generos(nome) VALUES ('Drama'),('Suspense'),('Romance'),('Comédia');

```