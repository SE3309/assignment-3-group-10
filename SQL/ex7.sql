/*First Create View */
CREATE VIEW UserActivitySummary AS
SELECT 
    U.username,
    U.email,
    COUNT(DISTINCT UF.followerUsername) AS followerCount,
    COUNT(DISTINCT WL.movieTitle) AS watchlistCount,
    COUNT(DISTINCT UC.listName) AS collectionsCount,
    COUNT(DISTINCT UR.movieTitle) AS reviewsCount
FROM 
    User U
LEFT JOIN 
    UserFollowers UF ON U.username = UF.username
LEFT JOIN 
    UserWatchlist WL ON U.username = WL.username
LEFT JOIN 
    UserCollection UC ON U.username = UC.username
LEFT JOIN 
    UserReview UR ON U.username = UR.username
GROUP BY 
    U.username, U.email;

/*Second Create View */

    CREATE VIEW UserCollectionWithWatchlistAndRating AS
SELECT
    u.username AS user_username,
    u.email AS user_email,
    u.joinDate AS user_joinDate,
    uc.listName AS collection_listName,
    uc.dateCreated AS collection_dateCreated,
    cm.movieTitle AS collection_movieTitle,
    cm.releaseDate AS collection_movieReleaseDate,
    uw.movieTitle AS watchlist_movieTitle,
    uw.releaseDate AS watchlist_movieReleaseDate,
    AVG(ur.rating) AS average_movieRating
FROM
    User u
LEFT JOIN
    UserCollection uc ON u.username = uc.username
LEFT JOIN
    CollectionMovies cm ON uc.username = cm.username AND uc.listName = cm.listName
LEFT JOIN
    UserWatchlist uw ON u.username = uw.username
LEFT JOIN
    UserReview ur ON u.username = ur.username AND uw.movieTitle = ur.movieTitle AND uw.releaseDate = ur.releaseDate
GROUP BY
    u.username, u.email, u.joinDate, uc.listName, uc.dateCreated, cm.movieTitle, cm.releaseDate, uw.movieTitle, uw.releaseDate;


