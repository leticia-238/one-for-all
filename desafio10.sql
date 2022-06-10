SELECT 
  songs.song_name AS nome,
  count(history.song_id) AS reproducoes
FROM SpotifyClone.history AS history
INNER JOIN
SpotifyClone.songs AS songs 
	ON history.song_id = songs.song_id
INNER JOIN SpotifyClone.users AS users
	ON history.user_id = users.user_id
INNER JOIN SpotifyClone.plans AS plans
	ON plans.plan_id = users.plan_id 
		AND plans.plan_type IN ('gratuito','pessoal')
GROUP BY nome
ORDER BY nome ASC;