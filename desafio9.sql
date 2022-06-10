SELECT 
    COUNT(history.user_id) AS quantidade_musicas_no_historico
FROM SpotifyClone.history AS history
INNER JOIN
SpotifyClone.users AS users 
  ON users.user_id = history.user_id
    AND users.user_name LIKE 'Bill';