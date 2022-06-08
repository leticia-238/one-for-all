SELECT
  ( SELECT COUNT(song_name) FROM SpotifyClone.songs ) AS cancoes,
  ( SELECT COUNT(artist_name) FROM SpotifyClone.artists ) AS artistas,
  ( SELECT COUNT(album_name) FROM SpotifyClone.albums) AS albuns;