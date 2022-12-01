SELECT s.name_song AS cancao, COUNT(h.id_song) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historic AS h
ON h.id_song = s.id_song
GROUP BY s.id_song
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;