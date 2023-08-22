--Название и продолжительность самого длительного трека

SELECT Name, Continuity
FROM tracks
WHERE Continuity = (SELECT max(Continuity) FROM tracks);

--Название треков, продолжительность которых не менее 3,5 минут

SELECT Name, Continuity
FROM tracks
WHERE Continuity >= 210;

--Название сборников, вышедших в период с 2018 по 2020 год включительно

SELECT Name, Year
FROM collections
WHERE Year BETWEEN 2018 and 2020;

--Исполнители, чьё имя состоит из одного слова

SELECT Name
FROM artists
WHERE Name NOT LIKE '%% %%';

--Название треков, которые содержат слово "мой" или "my"

SELECT Name
FROM tracks
WHERE Name ILIKE '% мой %'
OR Name ILIKE 'мой %'
OR Name ILIKE '% мой'
OR Name ILIKE 'мой';

--Количество исполнителей в каждом жанре

SELECT Name, count(Artist_ID)
FROM genres
JOIN genres_artists ON genres.Genre_ID = genres_artists.Genre_ID
GROUP BY Name

--Количество треков, вошедших в альбомы 2019-2020 годов

SELECT count(Album_ID)
FROM tracks
JOIN albums ON tracks.Album_ID = albums.Album_ID
WHERE Year >= '20190101' AND Year <= '20201231'

--Средняя продолжительность треков по каждому альбому

SELECT Name, avg(Continuity)
FROM tracks
JOIN albums ON tracks.Album_ID = albums.Album_ID
GROUP BY Name

--Все исполнители, которые не выпустили альбомы в 2020 году

SELECT DISTINCT Name
FROM artists
WHERE Name != (
	SELECT artists.Name FROM artists
	JOIN albums_artists  ON artists.Artist_ID = albums_artists.Artist_ID
	JOIN albums ON albums.Album_ID = albums_artists.Album_ID
	WHERE Year BETWEEN '20200101' AND '20201231');

--Названия сборников, в которых присутствует конкретный исполнитель

SELECT Name
FROM collections
JOIN tracks_collection on tracks_collection.Collection_ID = collections.Collection_ID
JOIN tracks ON tracks_collection.Track_ID = tracks.Track_ID
JOIN albums ON tracks.Album_ID = albums.Album_ID
JOIN albums_artists ON albums_artists.Album_ID = Albums.Album_ID
JOIN artists ON albums_artists.Artist_ID = Artists.Artist_ID
WHERE Name = 'Юрий Антонов'



