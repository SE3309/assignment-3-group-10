-- Task 6: Data Modification Commands

-- 1. INSERT Command
-- Add new data to the UserWatchlist table by selecting users and movies.
INSERT INTO UserWatchlist (userId, movieId)
SELECT userId, movieId
FROM User, Movie
WHERE Movie.genre = 'Action';

-- 2. UPDATE Command
-- Increase the ratings of all comedy movies with low ratings.
UPDATE Movie
SET rating = rating + 0.5
WHERE genre = 'Comedy' AND rating < 8.0;

-- 3. DELETE Command
-- Remove likes by inactive users from the ReviewLikes table.
DELETE FROM ReviewLikes
WHERE userId IN (
    SELECT userId
    FROM User
    WHERE accountStatus = 'Inactive'
);
