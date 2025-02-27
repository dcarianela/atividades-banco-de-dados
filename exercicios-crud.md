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

INSERT INTO filmes(titulo, lancamento, genero_id)
VALUES(
    'Diário de Uma Paixão',
    '2004-08-13',
    7
),
(
    'Parasita',
    '2019-05-30',
    6
),
(
    'Coringa: Delírio a Dois',
    '2024-10-04',
    5
);

INSERT INTO detalhes(duracao, sinopse, bilheteria, orcamento, filme_id)
VALUE(
    123,
    'O filme é baseado no romance de Nicholas Sparks e conta a história de um amor épico entre Noah (Ryan Gosling) e Allie (Rachel McAdams). Eles se apaixonam durante um verão na década de 1940, mas, devido a diferenças sociais e à oposição da família de Allie, acabam se separando. Anos depois, Noah e Allie se reencontram, mas ela está noiva de outro homem. A história de amor deles é recontada por Noah para Allie, que agora sofre de Alzheimer, em um esforço para reacender as memórias do passado e restaurar o vínculo que sempre os uniu.',
    'NULL',
    'NULL',
    4
),
(
    132,
    'Parasita é uma comédia dramática e suspense que segue a história da família Kim, que vive em uma situação de pobreza extrema. Quando o filho mais velho, Ki-woo, consegue um emprego como tutor de inglês para a filha de uma família rica, os Kims começam a se infiltrar na vida dos Park, sem que eles saibam. Gradualmente, os Kims conseguem arrumar empregos para todos os membros da família na casa dos Park, levando a uma série de eventos inesperados e dramáticos. O filme explora temas de desigualdade social, classe e as tensões entre as diferentes camadas da sociedade, culminando em uma reviravolta surpreendente.',
    'NULL',
    'NULL',
    5
),
(
    138,
    'Joker: Folie à Deux é uma sequência de Coringa (2019), que explora a jornada do personagem Arthur Fleck, agora totalmente mergulhado em sua identidade como o Coringa. A trama, que se passa em um ambiente psicológico e delirante, deve envolver a interação de Fleck com a personagem Harley Quinn, interpretada por Lady Gaga. O título "Folie à Deux", que significa "delírio a dois", sugere que a história se concentrará em uma relação de codependência entre Fleck e Quinn, à medida que ambos exploram e aprofundam seus distúrbios mentais de maneira conjunta. A abordagem deve continuar com o tom sombrio e introspectivo do primeiro filme, ampliando o conceito de loucura e caos no contexto de Gotham.',
    'NULL',
    'NULL',
    6
);

DELETE FROM detalhes WHERE id = 6;

DELETE FROM filmes WHERE id = 6;

UPDATE detalhes SET orcamento = 29000000
WHERE id = 4;
```