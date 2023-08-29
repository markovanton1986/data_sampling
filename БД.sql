CREATE TABLE IF NOT EXISTS genres (
	Genre_ID serial PRIMARY KEY,
	Name varchar(100) NOT NULL UNIQUE);

CREATE TABLE IF NOT EXISTS artists (
	Artist_ID serial PRIMARY KEY,
	Name varchar(100) NOT NULL UNIQUE);
	
CREATE TABLE IF NOT EXISTS genres_artists (
	Genre_ID integer REFERENCES genres(Genre_ID),
	Artist_ID integer REFERENCES artists(Artist_ID),
	CONSTRAINT genres_artists_pk PRIMARY KEY (Genre_ID, Artist_ID));

CREATE TABLE IF NOT EXISTS albums (
	Album_ID serial PRIMARY KEY,
	Name varchar(100) NOT NULL,
	Year integer NOT NULL);
	
CREATE TABLE IF NOT EXISTS albums_artists (
	Album_ID integer REFERENCES albums(Album_ID),
	Artist_ID integer REFERENCES artists(Artist_ID),
	CONSTRAINT albums_artists_pk PRIMARY KEY (Album_ID, Artist_ID));

CREATE TABLE IF NOT EXISTS tracks (
	Track_ID serial PRIMARY KEY,
	Name varchar(100) NOT NULL,
	Continuity integer NOT NULL,
	Album_ID integer REFERENCES albums(Album_ID));

CREATE TABLE IF NOT EXISTS collections (
	Collection_ID serial PRIMARY KEY,
	Name varchar(100) NOT NULL,
	Year integer NOT NULL);

CREATE TABLE IF NOT EXISTS tracks_collections (
	Track_ID integer REFERENCES tracks(Track_ID),
	Collection_ID integer REFERENCES collections(Collection_ID),
	CONSTRAINT track_collection_pk PRIMARY KEY (Track_ID, Collection_ID));