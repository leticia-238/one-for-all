SELECT 
  songs.song_name AS cancao,
  COUNT(history.history_date) AS reproducoes
FROM SpotifyClone.history AS history
INNER JOIN SpotifyClone.songs AS songs 
  ON songs.song_id = history.song_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;