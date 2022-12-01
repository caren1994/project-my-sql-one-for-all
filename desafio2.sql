SELECT(SELECT COUNT (id_song) FROM SpotifyClone.songs)AS cancoes,
(SELECT COUNT (id_artist) FROM SpotifyClone.artist)AS artistas,
(SELECT COUNT (id_album) FROM SpotifyClone.album) AS albuns;