SELECT users.user_name as usuario, qtde_musicas_ouvidas, total_minutos
FROM SpotifyClone.users AS users
INNER JOIN
	(	
		SELECT user_id, COUNT(*) AS qtde_musicas_ouvidas
		FROM SpotifyClone.history
		GROUP BY user_id
	) AS musicas_ouvidas 
ON users.user_id = musicas_ouvidas.user_id
INNER JOIN
	(	
		SELECT user_id, ROUND(SUM(song_duration) / 60, 2) as total_minutos
		FROM
			(
				SELECT history.song_id, history.user_id, songs.song_duration
				FROM SpotifyClone.history AS history
				INNER JOIN SpotifyClone.songs AS songs 
				ON history.song_id = songs.song_id
			) AS songs_duration_by_user
		GROUP BY user_id
	) AS songs_duration
ON users.user_id = songs_duration.user_id
order by usuario asc;