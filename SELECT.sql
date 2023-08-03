#Название и продолжительность самого длительного трека

SELECT track_name, track_duration
FROM tracks
WHERE track_duration = (SELECT max(track_duration) FROM tracks);

#Название треков, продолжительность которых не менее 3,5 минут

SELECT track_name, track_duration
FROM tracks
WHERE track_duration >= 210;

#Название сборников, вышедших в период с 2018 по 2020 год включительно

SELECT collection_name, collection_date
FROM collections
WHERE collection_date BETWEEN 2018 and 2020;

#Исполнители, чьё имя состоит из одного слова

SELECT artist_name
FROM artists
WHERE artist_name NOT LIKE '%% %%';

#Название треков, которые содержат слово "мой" или "my"

SELECT track_name
FROM tracks
WHERE track_name LIKE '%%Мой%%';

#Количество исполнителей в каждом жанре

SELECT genre_name, count(id_artist_ag)
FROM Genres
JOIN Artists_Genres ON Genres.id_genre = Artists_Genres.id_genre_ag
GROUP BY genre_name

#Количество треков, вошедших в альбомы 2019-2020 годов

SELECT count(album_name)
FROM Tracks
JOIN albums ON Tracks.id_album_t = Albums.id_album
WHERE album_release_year >= '2019-01-01' AND album_release_year <= '2020-12-31'

#Средняя продолжительность треков по каждому альбому

SELECT album_name, avg(track_duration)
FROM Tracks
JOIN Albums ON Tracks.id_album_t = Albums.id_album
GROUP BY album_name

#Все исполнители, которые не выпустили альбомы в 2020 году

SELECT DISTINCT artist_name
FROM Artists
WHERE artist_name != (
	SELECT Artists.artist_name FROM Artists
	JOIN Artists_Album  ON Artists.id_artist = Artists_Album.id_artist_aa
	JOIN Albums ON Albums.id_album = Artists_Album.id_album_aa
	WHERE album_release_year BETWEEN '2020-01-01' AND '2020-12-31');

#Названия сборников, в которых присутствует конкретный исполнитель

SELECT collection_title
FROM Collections
JOIN Collection_Tracks on Collection_Tracks.id_collection_ct = Collections.id_collection
JOIN Tracks ON Collection_Tracks.id_track_ct = Tracks.id_track
JOIN Albums ON Tracks.id_album_t = Albums.id_album
JOIN Artists_Album ON Artists_Album.id_album_aa = Albums.id_album
JOIN Artists ON Artists_Album.id_artist_aa = Artists.id_artist
WHERE artist_name = 'Юрий Антонов'



