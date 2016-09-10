-- SQL Assignment
-- Check out [W3Schools' SQL Reference](http://www.w3schools.com/sql/sql_syntax.asp) as a reference.

-- Provide one or more SQL queries that retrieve the requested data
-- below each of the following questions:

-- 1) Find the albums recorded by the artist Queen.

-- \d+ artists
-- SELECT id FROM artists WHERE name='Queen'; 51, this finds Queen's id
-- SELECT  title FROM albums WHERE artists_id='51'

-- 2) [Count](http://www.w3schools.com/sql/sql_func_count.asp) how many tracks belong to the media type "Protected MPEG-4 video file".
-- SELECT name FROM media_types where id = 3; this gives Protected MPEG-f video file with id 3
-- SELECT COUNT(name) FROM tracks WHERE media_type_id = 3; this gives the answer: 214


-- 3) Find the least expensive track that has the genre "Electronica/Dance".
-- I want to find all the tracks with Electronica/Dance as genre, then the least expensive one
-- SELECT id FROM genres WHERE name = 'Electronica/Dance'; id = 15
-- SELECT name, unit_price FROM tracks WHERE genre_id = 15; Looking at the table, they are all 0.99 cents, they are all the 'least expensive'
-- SELECT name, unit_price FROM tracks WHERE genre_id = 15 AND unit_price = (Select min(unit_price) from tracks WHERE genre_id = 15);


-- 4) Find the all the artists whose names start with A.
-- SELECT name FROM artists WHERE name LIKE 'A%';


-- 5) Find all the tracks that belong to playlist 1.
-- SELECT tracks.id, tracks.name FROM playlists_tracks, tracks WHERE playlist_id = 1 AND playlists_tracks.track_id = tracks.id;
