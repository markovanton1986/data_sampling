INSERT INTO
	artists(Artist_ID, Name)
VALUES
	(1, 'Юрий Антонов'),
	(2, 'Михаил Боярский'),
	(3, 'Mr. Credo'),
   	(4, 'Алксандр Розенбаум');


INSERT INTO
	genres(Genre_ID, Name)
VALUES
    (1, 'Рок'),
    (2, 'Хип-Хоп'),
    (3, 'Блюз');


INSERT INTO
	albums(Album_ID, Name, Year)
VALUES
    (1, 'Есть только миг', '2023'),
    (2, 'Моя музыка', '2023'),
    (3, 'Высоко на небе', '2023');

INSERT INTO
	tracks(Track_ID, Name, Continuity, Album_ID)
VALUES
    (1, 'Зрелость', 300, 1),
    (2, 'Радость', 200, 2),
    (3, 'Мечта', 250, 3),
    (4, 'Нетология', 330, 1),
    (5, 'Диплом', 280, 2),
    (6, 'Работа', 360, 3);

INSERT INTO
	collections(Collection_ID, Name, Year)
VALUES
    (1, 'Звук души', '2023'),
    (2, 'Крик моря', '2023'),
    (3, 'Надежда', '2023'),
    (4, 'Гармония звука', '2023');

INSERT INTO
    genres_artists(Genre_Artist_ID, Artist_ID)
VALUES
    (1, 1),
    (1, 2),
    (1, 3);

INSERT INTO
    albums_artists(Album_Artist_ID, Artist_ID)
VALUES
    (1, 1),
    (1, 2),
    (1, 3);

INSERT INTO
    tracks_collections(Track_Collection_ID, Collection_ID)
VALUES
    (1, 1),
    (1, 2),
    (1, 3);