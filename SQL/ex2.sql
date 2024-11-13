CREATE DATABASE my_database;
USE assignment3;

CREATE TABLE User (
    username VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    joinDate DATE,
    watchlistUpdateDate DATE,
    PRIMARY KEY (username),
    UNIQUE (email)
);
DESCRIBE User;

CREATE TABLE UserFollowers (
    username VARCHAR(25) NOT NULL,
    followerUsername VARCHAR(25) NOT NULL,
    PRIMARY KEY (username, followerUsername),
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (followerUsername) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE UserFollowers;

CREATE TABLE FollowedUsers (
    username VARCHAR(25) NOT NULL,
    followedUsers VARCHAR(25) NOT NULL,
    PRIMARY KEY (username, followedUsers),
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (followedUsers) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE FollowedUsers;


CREATE TABLE UserWatchlist (
    username VARCHAR(25) NOT NULL,
    movieTitle VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    watchlistUpdateDate DATE,
    PRIMARY KEY (username, movieTitle, releaseDate),
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (movieTitle, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE UserWatchlist;

CREATE TABLE UserCollection (
    username VARCHAR(25) NOT NULL,
    listName VARCHAR(25) NOT NULL,
    PRIMARY KEY (username, listName),
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (listName) REFERENCES Collection(listName) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE UserCollection;

CREATE TABLE CollectionMovies (
    username VARCHAR(25) NOT NULL,
    listName VARCHAR(25) NOT NULL,
    movieTitle VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    PRIMARY KEY (username, listName, movieTitle, releaseDate),
    FOREIGN KEY (username, listName) REFERENCES UserCollection(username, listName) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (movieTitle, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE CollectionMovies;

CREATE TABLE Collection (
    listName VARCHAR(25) NOT NULL,
    description TEXT,
    dateCreated DATE,
    PRIMARY KEY (listName)
);
DESCRIBE Collection;

CREATE TABLE UserReview (
    username VARCHAR(25) NOT NULL,
    datePosted DATE NOT NULL,
    movieTitle VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    rating INT,
    reviewText TEXT,
    PRIMARY KEY (username, datePosted, movieTitle, releaseDate),
    FOREIGN KEY (username) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (movieTitle, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE UserReview;

CREATE TABLE ReviewLikes (
    username VARCHAR(25) NOT NULL,
    datePosted DATE NOT NULL,
    movieTitle VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    likedByUsername VARCHAR(25) NOT NULL,
    PRIMARY KEY (username, datePosted, movieTitle, releaseDate, likedByUsername),
    FOREIGN KEY (username, datePosted, movieTitle, releaseDate) REFERENCES UserReview(username, datePosted, movieTitle, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (likedByUsername) REFERENCES User(username) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE ReviewLikes;


CREATE TABLE Review (
    movieTitle VARCHAR(25) NOT NULL,
    datePosted DATE NOT NULL,
    releaseDate DATE NOT NULL,
    rating INT,
    PRIMARY KEY (movieTitle, datePosted, releaseDate),
    FOREIGN KEY (movieTitle, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE Review;



CREATE TABLE Movie (
    title VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    duration INT,
    synopsis TEXT,
    genre VARCHAR(25),
    PRIMARY KEY (title, releaseDate)
);
DESCRIBE Movie;

CREATE TABLE MovieCast (
    title VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    castName VARCHAR(25) NOT NULL,
    castDOB DATE NOT NULL,
    PRIMARY KEY (title, releaseDate, castName, castDOB),
    FOREIGN KEY (title, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (castName, castDOB) REFERENCES Cast (name, dateOfBirth) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE MovieCast;


CREATE TABLE MovieDirector (
    title VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    directorName VARCHAR(25) NOT NULL,
    directorDOB DATE NOT NULL,
    PRIMARY KEY (title, releaseDate, directorName, directorDOB),
    FOREIGN KEY (title, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (directorName, directorDOB) REFERENCES Director(name, dateOfBirth) ON DELETE CASCADE ON UPDATE CASCADE
);

DESCRIBE MovieDirector;


CREATE TABLE Cast (
    name VARCHAR(25) NOT NULL,
    dateOfBirth DATE NOT NULL,
    biography TEXT,
    PRIMARY KEY (name, dateOfBirth)
);
DESCRIBE Cast;



CREATE TABLE CastMovies (
    name VARCHAR(25) NOT NULL,
    dateOfBirth DATE NOT NULL,
    title VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    PRIMARY KEY (name, dateOfBirth, title, releaseDate),
    FOREIGN KEY (name, dateOfBirth) REFERENCES Cast (name, dateOfBirth) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (title, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE CastMovies;


CREATE TABLE Director (
    name VARCHAR(25) NOT NULL,
    dateOfBirth DATE NOT NULL,
    biography TEXT,
    PRIMARY KEY (name, dateOfBirth)
);

DESCRIBE Director;


CREATE TABLE DirectorMovies (
    name VARCHAR(25) NOT NULL,
    dateOfBirth DATE NOT NULL,
    title VARCHAR(25) NOT NULL,
    releaseDate DATE NOT NULL,
    PRIMARY KEY (name, dateOfBirth, title, releaseDate),
    FOREIGN KEY (name, dateOfBirth) REFERENCES Director (name, dateOfBirth) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (title, releaseDate) REFERENCES Movie(title, releaseDate) ON DELETE CASCADE ON UPDATE CASCADE
);
DESCRIBE DirectorMovies;

