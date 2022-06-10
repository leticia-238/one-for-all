SELECT 
    artists.artist_name AS artista, 
    albums.album_name AS album,
    COUNT(followers.artist_id) AS seguidores
FROM SpotifyClone.albums AS albums
INNER JOIN SpotifyClone.artists AS artists 
  ON albums.artist_id = artists.artist_id
INNER JOIN SpotifyClone.followers as followers
  ON artists.artist_id = followers.artist_id
GROUP BY artista , album
ORDER BY seguidores DESC, artista ASC, album ASC;