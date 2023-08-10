--Название и продолжительность самого длительного трека

SELECT track_name, track_duration
FROM tracks
WHERE track_duration = (SELECT max(track_duration) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут

SELECT track_name, track_duration
FROM tracks
WHERE track_duration >= 210;

--Название сборников, вышедших в период с 2018 по 2020 год включительно

SELECT collection_name, collection_date
FROM collections
WHERE collection_date BETWEEN 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова

SELECT artist_name
FROM artists
WHERE artist_name NOT LIKE '%% %%';

--Название треков, которые содержат слово "мой" или "my"

SELECT track_name
FROM tracks
WHERE track_name ILIKE '% мой %'
OR track_name ILIKE 'мой %'
OR track_name ILIKE '% мой'
OR track_name ILIKE 'мой';

--Количество исполнителей в каждом жанре

SELECT genre_name, count(id_artist_ag)
FROM genres
JOIN genres_artists ON genres.genre_id = genres_artists.genre_id
GROUP BY genre_name

--Количество треков, вошедших в альбомы 2019-2020 годов

SELECT count(album_name)
FROM tracks
JOIN albums ON tracks.album_id = albums.album_id
WHERE album_release_year >= '20190101' AND album_release_year <= '20201231'

--Средняя продолжительность треков по каждому альбому

SELECT album_name, avg(track_duration)
FROM tracks
JOIN albums ON tracks.album_id = albums.album_id
GROUP BY album_name

--Все исполнители, которые не выпустили альбомы в 2020 году

SELECT DISTINCT artist_name
FROM artists
WHERE artist_name != (
	SELECT artists.artist_name FROM artists
	JOIN albums_artists  ON artists.artist_id = albums_artists.artist_id
	JOIN albums ON albums.album_id = albums_artists.album_id
	WHERE album_release_year BETWEEN '20200101' AND '20201231');

--Названия сборников, в которых присутствует конкретный исполнитель

SELECT collection_title
FROM collections
JOIN tracks_collection on tracks_collection.id_collection_ct = collections.collection_id
JOIN tracks ON tracks_collection.track_id = tracks.track_id
JOIN albums ON tracks.album_id = albums.album_id
JOIN albums_artists ON albums_artists.album_id = Albums.album_id
JOIN artists ON albums_artists.artist_id = Artists.artist_id
WHERE artist_name = 'Юрий Антонов'



