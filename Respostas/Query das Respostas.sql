-- 1 - Buscar o nome e ano dos filmes
select Nome, Ano from Filmes

-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
select Nome, Ano from Filmes order by Ano

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
select Nome, Ano, Duracao from Filmes where Nome = 'De Volta para o Futuro'

-- 4 - Buscar os filmes lançados em 1997
select * from Filmes where Ano = 1997

-- 5 - Buscar os filmes lançados APÓS o ano 2000
select * from Filmes where Ano > 2000

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
select * from Filmes where Duracao > 100 and Duracao < 150

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
select count(Nome) as Quantidade, Ano from Filmes
group by Ano
order by Quantidade desc

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M'

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome

-- 10 - Buscar o nome do filme e o gênero
select F.Nome, G.Genero
from Filmes as F
join FilmesGenero as FG on F.Id = FG.IdFilme
join Generos as G on FG.IdGenero = G.Id

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
select F.Nome, G.Genero
from Filmes as F
join FilmesGenero as FG on F.Id = FG.IdFilme
join Generos as G on FG.IdGenero = G.Id
where G.Genero = 'Mistério'

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
select F.Nome, A.PrimeiroNome, A.UltimoNome, E.Papel
from Filmes as F
join ElencoFilme as E on F.Id = E.IdFilme
join Atores as A on E.IdAtor = A.Id