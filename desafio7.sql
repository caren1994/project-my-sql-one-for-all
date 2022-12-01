SELECT a.name_artist AS artista, al.name_album AS album, COUNT(f.id_artist) AS seguidores
FROM SpotifyClone.artist AS a
INNER JOIN SpotifyClone.album AS al
ON a.id_artist=al.id_artist
INNER JOIN SpotifyClone.following_artist AS f
ON a.id_artist=f.id_artist
GROUP BY al.id_album
ORDER BY seguidores DESC,a.name_artist,al.name_album;

