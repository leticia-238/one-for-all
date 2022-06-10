SELECT 
	users.user_name AS usuario, 
  COUNT(history.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(songs.song_duration) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history 
ON users.user_id = history.user_id
INNER JOIN SpotifyClone.songs as songs
ON songs.song_id = history.song_id
GROUP BY usuario
ORDER BY usuario ASC;