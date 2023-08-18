-- All albums in your table
SELECT * FROM albums;
-- No UPDATE statement needed for this query

-- All albums released before 1980
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET sales = sales * 10;
-- No need to update the release_date for this query

-- All albums by Michael Jackson
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET sales = sales * 10;
-- No need to update the release_date for this query

-- Move all albums before 1980 back to the 1800s
SELECT * FROM albums WHERE release_date < 1980;
UPDATE albums SET release_date = release_date - 100;
-- No need to update the sales for this query

-- Change 'Michael Jackson' to 'Peter Jackson'
SELECT * FROM albums WHERE artist = 'Michael Jackson';
UPDATE albums SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';
