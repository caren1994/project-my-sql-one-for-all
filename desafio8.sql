SELECT a.name_artist AS artista, al.name_album AS album
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al
ON a.id_artist = al.id_artist
WHERE a.name_artist LIKE 'Elis Regina';