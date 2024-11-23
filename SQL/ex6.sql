-- Task 6: Data Modification Commands

-- 1. INSERT Command
-- Add new data to the UserWatchlist table by selecting users and movies.
INSERT INTO UserWatchlist (username, movieTitle, releaseDate, watchlistUpdateDate)
SELECT username, title, releaseDate, CURDATE()
FROM User, Movie
WHERE Movie.genre = 'Action'
AND NOT EXISTS (
    SELECT 1
    FROM UserWatchlist
    WHERE UserWatchlist.username = User.username
    AND UserWatchlist.movieTitle = Movie.title
    AND UserWatchlist.releaseDate = Movie.releaseDate
);


-- 2. UPDATE Command
UPDATE Movie
SET duration = duration + 10
WHERE genre = 'Comedy'
LIMIT 10;


-- 3. DELETE Command
-- Remove likes by inactive users from the ReviewLikes table.
DELETE FROM ReviewLikes
WHERE username IN (
    SELECT username
    FROM User
    WHERE watchlistUpdateDate IS NULL
)
LIMIT 10;

