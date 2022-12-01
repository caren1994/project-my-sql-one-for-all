SELECT s.name_song AS nome_musica,
CASE 
	WHEN ss.name_song LIKE '%bard%' THEN REPLACE(ss.name_song, 'Bard', 'QA')
	WHEN ss.name_song LIKE '%Amar%' THEN REPLACE(ss.name_song, 'Amar', 'Code Review')
	WHEN ss.name_song LIKE '%Pais%' THEN REPLACE(ss.name_song, 'Pais', 'Pull Requests')
	WHEN ss.name_song LIKE '%SOUL%' THEN REPLACE(ss.name_song, 'SOUL', 'CODE')
	WHEN ss.name_song LIKE '%SUPERSTAR%' THEN REPLACE(ss.name_song, 'SUPERSTAR', 'SUPERDEV')
END AS novo_nome
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.songs AS ss 
ON s.id_song = ss.id_song
GROUP BY s.id_song 
HAVING novo_nome IS NOT NULL
ORDER BY s.name_song DESC;