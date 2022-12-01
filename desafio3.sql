SELECT u.user_name AS usuario , COUNT (h.data_reproducao) AS qt_de_musicas_ouvidas, ROUND(SUM(s.duracao_segundos)/60,2)AS total_minutos
FROM SpotifyClone.user AS u
INNER JOIN SpotifyClone.historic AS h
ON u.user_id = h.user_id
INNER JOIN SpotifyClone.songs AS s
ON s.id_song = h.id_song
GROUP BY user_name
ORDER BY user_name ASC;
