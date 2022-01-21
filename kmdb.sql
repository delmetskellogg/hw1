-- In this assignment, you'll be building the domain model, database 
-- structure, and data for "KMDB" (the Kellogg Movie Database).
-- The end product will be a report that prints the movies and the 
-- top-billed cast for each movie in the database.

-- Requirements/assumptions
--
-- - There will only be three movies in the database – the three films
--   that make up Christopher Nolan's Batman trilogy
-- - Movie data includes the movie title, year released, MPAA rating,
--   and director
-- - A movie has a single director
-- - A person can be the director of and/or play a role in a movie
-- - Everything you need to do in this assignment is marked with TODO!

-- Rubric
-- 
-- There are three deliverables for this assignment, all delivered via
-- this file and submitted via GitHub and Canvas:
-- - A domain model, implemented via CREATE TABLE statements for each
--   model/table. Also, include DROP TABLE IF EXISTS statements for each
--   table, so that each run of this script starts with a blank database.
--   (10 points)
-- - Insertion of "Batman" sample data into tables (5 points)
-- - Selection of data, so that something similar to the following sample
--   "report" can be achieved (5 points)

-- Submission
-- 
-- - "Use this template" to create a brand-new "hw1" repository in your
--   personal GitHub account, e.g. https://github.com/<USERNAME>/hw1
-- - Do the assignment, committing and syncing often
-- - When done, commit and sync a final time, before submitting the GitHub
--   URL for the finished "hw1" repository as the "Website URL" for the 
--   Homework 1 assignment in Canvas

-- Successful sample output is as shown:

-- Movies
-- ======

-- Batman Begins          2005           PG-13  Christopher Nolan
-- The Dark Knight        2008           PG-13  Christopher Nolan
-- The Dark Knight Rises  2012           PG-13  Christopher Nolan

-- Top Cast
-- ========

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle

-- Turns column mode on but headers off
.mode column
.headers off

-- Drop existing tables, so you'll start fresh each time this script is run.
DROP TABLE IF EXISTS movies;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS roles;

-- Create new tables, according to your domain model
-- TODO!
CREATE TABLE people (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT,
  last_name TEXT
);

CREATE TABLE movies (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  release_year INTEGER,
  mpaa_rating TEXT,
  director_id INTEGER
);


CREATE TABLE roles (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  movie_id TEXT,
  person_id TEXT,
  movie_character TEXT
);


-- Insert data into your database that reflects the sample data shown above
-- Use hard-coded foreign key IDs when necessary

-- Batman Begins          Christian Bale        Bruce Wayne
-- Batman Begins          Michael Caine         Alfred
-- Batman Begins          Liam Neeson           Ra's Al Ghul
-- Batman Begins          Katie Holmes          Rachel Dawes
-- Batman Begins          Gary Oldman           Commissioner Gordon
-- The Dark Knight        Christian Bale        Bruce Wayne
-- The Dark Knight        Heath Ledger          Joker
-- The Dark Knight        Aaron Eckhart         Harvey Dent
-- The Dark Knight        Michael Caine         Alfred
-- The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
-- The Dark Knight Rises  Christian Bale        Bruce Wayne
-- The Dark Knight Rises  Gary Oldman           Commissioner Gordon
-- The Dark Knight Rises  Tom Hardy             Bane
-- The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
-- The Dark Knight Rises  Anne Hathaway         Selina Kyle



INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Christopher",
    "Nolan"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Christian",
    "Bale"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Michael",
    "Caine"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Liam",
    "Neeson"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Katie",
    "Holmes"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Gary",
    "Oldman"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Heath",
    "Ledger"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Aaron",
    "Eckhart"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Maggie",
    "Gyllenhall"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Tom",
    "Hardy"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Joseph",
    "Gordon-Levitt"
);
INSERT INTO people (
  first_name,
  last_name
)
VALUES (
    "Anne",
    "Hathaway"
);


INSERT INTO movies (
  title,
  release_year,
  mpaa_rating,
  director_id
)
VALUES (
    "Batman Begins", 
    2005,
    "PG-13",
    1
);

INSERT INTO movies (
  title,
  release_year,
  mpaa_rating,
  director_id
)
VALUES (
    "The Dark Knight", 
    2008,
    "PG-13",
    1
);

INSERT INTO movies (
  title,
  release_year,
  mpaa_rating,
  director_id
)
VALUES (
    "The Dark Knight Rises", 
    2012,
    "PG-13",
    1
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    1, 
    2,
    "Bruce Wayne"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    1, 
    3,
    "Alfred"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    1, 
    4,
    "Ra's Al Ghul"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    1, 
    5,
    "Rachel Dawes"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    1, 
    6,
    "Commissioner Gordon"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    2, 
    2,
    "Bruce Wayne"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    2, 
    7,
    "Joker"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    2, 
    8,
    "Harvey Dent"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    2, 
    3,
    "Alfred"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    2, 
    9,
    "Rachel Dawes"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    3, 
    2,
    "Bruce Wayne"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    3, 
    5,
    "Commissioner Gordon"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    3, 
    10,
    "Bane"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    3, 
    11,
    "John Blake"
);

INSERT INTO roles (
  movie_id ,
  person_id ,
  movie_character 
)
VALUES (
    3, 
    12,
    "Selina Kyle"
);
-- Prints a header for the movies output
.print "Movies"
.print "======"
.print ""

-- The SQL statement for the movies output
SELECT movies.title, movies.release_year, movies.mpaa_rating, people.first_name, people.last_name
FROM movies
INNER JOIN people on movies.director_id=people.id;

-- Prints a header for the cast output
.print ""
.print "Top Cast"
.print "========"
.print ""


-- The SQL statement for the cast output
SELECT movies.title, people.first_name, people.last_name , roles.movie_character
FROM roles
INNER JOIN people on roles.person_id=people.id
INNER JOIN movies on roles.movie_id=movies.id;