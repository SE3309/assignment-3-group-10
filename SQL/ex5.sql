USE assignment3;


-- Query 1: Cast younger than 2009 (BASIC)
SELECT name, dateOfBirth
FROM Cast
WHERE dateOfBirth > '2009-01-01';

-- Query 2: Order Director By Oldest (ORDER BY)
SELECT name, dateOfBirth
FROM Director
ORDER BY dateOfBirth ASC;

-- Query 3: Movies with 2+ reviews (GROUP BY/HAVING)
SELECT movieTitle, releaseDate, COUNT(*) AS review_count
FROM UserReview
GROUP BY movieTitle, releaseDate
HAVING review_count > 1;

-- Query 4: Retriving Director For Movies on User Watchlist (JOIN)
SELECT UserWatchlist.username, UserWatchlist.movieTitle, MovieDirector.directorName
FROM UserWatchlist
JOIN MovieDirector ON UserWatchlist.movieTitle = MovieDirector.title
AND UserWatchlist.releaseDate = MovieDirector.releaseDate;

-- Query 5: user data of who reviewed certain movie (Subquery with equality)
SELECT username, joinDate
FROM User
WHERE username = (
    SELECT username
    FROM UserReview
    WHERE movieTitle = 'Life of Pi' AND releaseDate = '1983-11-03'
);

-- Query 6: Data from release date after specific actors birthday (ANY/SOME)
SELECT *
FROM MovieCast
WHERE releaseDate > SOME (
	SELECT castDOB
     FROM MovieCast
     WHERE castName = 'Orly Sey'
 );

-- Query 7: followed users where they have an existing movie review with a 5 rating (EXISTS)
 SELECT followedUsers
 FROM FollowedUsers
 WHERE EXISTS (
 	SELECT movieTitle
 	FROM UserReview
     WHERE UserReview.userName = FollowedUsers.followedUsers
     AND rating = 5
     ); 











