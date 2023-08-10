INSERT INTO
	artists(id, name)
VALUES
	(1, 'Юрий Антонов'),
	(2, 'Михаил Боярский'),
	(3, 'Mr. Credo'),
   	(4, 'Алксандр Розенбаум');


INSERT INTO
	genres(id, name)
VALUES
    (1, 'Рок'),
    (2, 'Хип-Хоп'),
    (3, 'Блюз');


INSERT INTO
	albums(id, name, releaseDate)
VALUES
    (1, 'Есть только миг', '2023'),
    (2, 'Моя музыка', '2023'),
    (3, 'Высоко на небе', '2023');

INSERT INTO
	tracks(id, name, trackLength, id_album)
VALUES
    (1, 'Зрелость', 300, 1),
    (2, 'Радость', 200, 2),
    (3, 'Мечта', 250, 3),
    (4, 'Нетология', 330, 4),
    (5, 'Диплом', 280, 5),
    (6, 'Работа', 360, 6);

INSERT INTO
	collections(id, name, release_year)
VALUES
    (1, 'Звук души', '2023'),
    (2, 'Крик моря', '2023'),
    (3, 'Надежда', '2023'),
    (4, 'Гармония звука', '2023');

INSERT INTO
    genres_artists(artist_id, genre_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3);

INSERT INTO
    albums_artists(artist_id, album_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3);

INSERT INTO
    tracks_collections(collection_id, track_id)
VALUES
    (1, 1),
    (1, 2),
    (1, 3);