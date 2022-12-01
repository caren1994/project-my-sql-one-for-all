SELECT 
  	s.name_song nome,
    COUNT(h.id_song) reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.historic AS h 
ON s.id_song = h.id_song
INNER JOIN SpotifyClone.user AS u 
ON h.user_id = u.user_id
INNER JOIN SpotifyClone.plan AS p 
ON u.id_plan = p.id_plan
WHERE p.name_plan IN ('gratuito','pessoal')
GROUP BY s.name_song
ORDER BY s.name_song;