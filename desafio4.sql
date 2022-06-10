SELECT 
  users.user_name AS usuario,
  IF(active_users.user_id = users.user_id,
    'Usuário ativo',
    'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS users
LEFT JOIN
  (
		SELECT DISTINCT user_id
		FROM SpotifyClone.history
		WHERE YEAR(history_date) = 2021
	) AS active_users 
ON users.user_id = active_users.user_id
ORDER BY usuario ASC;