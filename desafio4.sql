SELECT u.user_name AS usuario,IF (MAX(YEAR(h.data_reproducao))>=2021,'Usuário ativo','Usuário inativo') AS status_usuario
FROM SpotifyClone.user AS u 
INNER JOIN SpotifyClone.historic AS h
ON  u.user_id = h.user_id
GROUP BY user_name
ORDER BY user_name ASC;

