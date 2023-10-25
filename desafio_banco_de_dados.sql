-- 1 Bucando o nome e ano dos filmes--

SELECT Nome, Ano FROM Filmes


-- 2 Busncao o nome e ano do filmes por ordem crescente pelo ano --

SELECT Nome, Ano FROM Filmes ORDER BY Ano


-- 3 Buscando filme "De volta para o futuro", trazendo nome, ano e duração --

SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o Futuro'

-- 4 Buscando filmes lançados em 1997 -- 

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997'

-- 5 Buscando filmes lançados após o ano 2000 -- 

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano >= 2000

-- 6 Buscando filmes com duração maior que 100 e menor que 150, ordenado em ordem crescente -- 

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

-- 7 Buscando quantidade de filmes lançados por ano, agrupando por ano, ordenado em ordem decrescente -- 

SELECT Ano, COUNT(*) Quantidade FROM Filmes GROUP BY Ano
ORDER BY Quantidade DESC


-- 8 Buscando Atores masculinos, retornando o Primeiro nome e ultimo Nome -- 

SELECT * FROM Atores WHERE Genero = 'M'

-- 9 Buscando Atores femininos, retotnando o Primeiro nome e ultimo Nome, ordenado pelo Primeiro nome -- 

SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10 Buscando o nome do filme e o gênero -- 

SELECT Nome, Generos.Genero FROM Filmes INNER JOIN  FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 

-- 11 Busncado o nome do filme e o gênero do tipo "MISTÉRIO" -- 

SELECT  Nome, Generos.Genero FROM Filmes INNER JOIN  FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id WHERE Genero = 'Mistério'

-- 12 Buscando o nome do Filme e os atores, trazendo o Primieor nome, ultimo nome e o papel --

SELECT Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel 

FROM Filmes 

INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id


