DROP DATABASE IF EXISTS movies;
CREATE DATABASE movies;

\c movies;

CREATE TABLE genres (
  id SERIAL PRIMARY KEY,
  name VARCHAR UNIQUE NOT NULL
);

CREATE TABLE movies (
  id SERIAL PRIMARY KEY,
  title VARCHAR UNIQUE NOT NULL,
  genre_id INT REFERENCES genres(id) NOT NULL,
  img_url VARCHAR NULL
);

CREATE TABLE ratings (
  id SERIAL PRIMARY KEY,
  stars INT NULL,
  movie_id INT REFERENCES movies(id) NOT NULL
);

CREATE TABLE comments (
  id SERIAL PRIMARY KEY,
  text VARCHAR NOT NULL,
  movie_id INT REFERENCES movies(id) NOT NULL
);


INSERT INTO genres (name) VALUES ('Action');/*1*/
INSERT INTO genres (name) VALUES ('Adventure');/*2*/
INSERT INTO genres (name) VALUES ('Animation');/*3*/
INSERT INTO genres (name) VALUES ('Comedy');/*4*/
INSERT INTO genres (name) VALUES ('Documentary');/*5*/
INSERT INTO genres (name) VALUES ('Drama');/*6*/
INSERT INTO genres (name) VALUES ('Family');/*7*/
INSERT INTO genres (name) VALUES ('Horror');/*8*/
INSERT INTO genres (name) VALUES ('Mystery');/*9*/
INSERT INTO genres (name) VALUES ('Romance');/*10*/
INSERT INTO genres (name) VALUES ('Sci-Fi');	/*11*/


INSERT INTO movies (title, genre_id, img_url) VALUES
('THOR THE DARK WORLD', 1,'https://resizing.flixster.com/JldLpBl5qI3S_A6vakWm2aMI8cE=/fit-in/1152x864/v1.aDsxMDE0NjU7ajsxODA0NjsxMjAwOzE2ODg7MjUwMA');
INSERT INTO movies (title, genre_id, img_url) VALUES
('THE BOSS BABY', 7,'https://resizing.flixster.com/Y9nmGCGu-BYPkQtZBw4ELN3a2SM=/fit-in/1152x864/v1.bjsxMjYxMjc1O2o7MTgwNTk7MTIwMDszMDAwOzE2ODc');
INSERT INTO movies (title, genre_id, img_url) VALUES
('MOANA', 7,'https://resizing.flixster.com/QUsSWVOtD8oiZqS5_lyFRIcCyDA=/fit-in/200x296.2962962962963/v1.bTsxMjIyMTc2NDtwOzE4MDUxOzEyMDA7NDU3OzY3NQ');
INSERT INTO movies (title, genre_id, img_url) VALUES
('THE NOTEBOOK', 10,'https://resizing.flixster.com/cmMr1Q8W_peh0QkZYqwpakAznY0=/206x305/v1.bTsxMTIwNzQyMTtqOzE4MDg0OzEyMDA7MTUwMDsyMDAw');
INSERT INTO movies (title, genre_id, img_url) VALUES
('FIVE FEET APART', 10,'https://resizing.flixster.com/1TI4NCbGfSVLkcht-EBq542Yadk=/fit-in/200x296.2962962962963/v1.bTsxMjk5MjE2OTtqOzE4MDYwOzEyMDA7NTQwMDs4MDAw');
INSERT INTO movies (title, genre_id, img_url) VALUES
('ET THE EXTRA TERRESTRIAL', 7,'https://resizing.flixster.com/A9c_RJ5WENh0kV_f3iHRJUXATtA=/206x305/v1.bTsxMTE2Njc4ODtqOzE4MDg0OzEyMDA7ODAwOzEyMDA');
INSERT INTO movies (title, genre_id, img_url) VALUES
('GRAVITY', 6,'https://resizing.flixster.com/DZ0GndteRvjcFUMuPf55_Pe-8vY=/fit-in/200x296.2962962962963/v1.bTsxMTE3NjQ1MDtqOzE4MDg0OzEyMDA7ODAwOzEyMDA');
INSERT INTO movies (title, genre_id, img_url) VALUES
('THE SHAPE OF WATER', 6,'https://resizing.flixster.com/Exlfb5KZuBmHgzQ6qHTB0RqeD9M=/fit-in/200x296.2962962962963/v1.bTsxMjU2MTA5MDtqOzE4MDU1OzEyMDA7MTM4MjsyMDQ4');
INSERT INTO movies (title, genre_id, img_url) VALUES
('BACK TO THE FUTURE', 4,'https://resizing.flixster.com/d8z8sLaWE7VgW401jtQUy-1VPcQ=/fit-in/200x296.2962962962963/v1.bTsxMjk2MTM0NjtqOzE4MDYwOzEyMDA7MTIyMDsxODMw');
INSERT INTO movies (title, genre_id, img_url) VALUES
('ANT-MAN AND THE WASP', 4,'https://resizing.flixster.com/mlXm_KiPiLMg0XDOrcBNbFhdn5M=/fit-in/200x296.2962962962963/v1.bTsxMjcyOTQxMjtqOzE4MDU3OzEyMDA7MTYzODsyMDQ4');
INSERT INTO movies (title, genre_id, img_url) VALUES
('MONSTERS, INC.', 7,'https://resizing.flixster.com/v61sJyQ9cA81sI4Va02cj1sroBA=/fit-in/200x296.2962962962963/v1.bTsxMTE2NjUyNDtqOzE4MDg0OzEyMDA7MTA4NjsxNjA5');
INSERT INTO movies (title, genre_id, img_url) VALUES
('BLACK PANTHER', 1,'https://resizing.flixster.com/FP3qKOS-OS97xwjP5T5GKf3t86I=/fit-in/200x296.2962962962963/v1.bTsxMjU1NzcyNTtqOzE4MDU1OzEyMDA7MTY4ODsyNTAw');
INSERT INTO movies (title, genre_id, img_url) VALUES
('LOGAN', 6,'https://resizing.flixster.com/di7goLkvaAAajeA7r8Wna9GTyOg=/fit-in/200x296.2962962962963/v1.bTsxMjMwNDQ4NDtqOzE4MDUyOzEyMDA7NjI2OzkyNA');

INSERT INTO ratings (stars, movie_id) VALUES (3, 1);
INSERT INTO ratings (stars, movie_id) VALUES (5, 1);
INSERT INTO ratings (stars, movie_id) VALUES (4, 2);
INSERT INTO ratings (stars, movie_id) VALUES (3, 2);
INSERT INTO ratings (stars, movie_id) VALUES (5, 3);
INSERT INTO ratings (stars, movie_id) VALUES (2, 4);
INSERT INTO ratings (stars, movie_id) VALUES (3, 4);
INSERT INTO ratings (stars, movie_id) VALUES (5, 5);
INSERT INTO ratings (stars, movie_id) VALUES (5, 5);
INSERT INTO ratings (stars, movie_id) VALUES (4, 6);
INSERT INTO ratings (stars, movie_id) VALUES (5, 6);
INSERT INTO ratings (stars, movie_id) VALUES (3, 7);
INSERT INTO ratings (stars, movie_id) VALUES (5, 7);
INSERT INTO ratings (stars, movie_id) VALUES (5, 8);
INSERT INTO ratings (stars, movie_id) VALUES (2, 8);
INSERT INTO ratings (stars, movie_id) VALUES (3, 9);
INSERT INTO ratings (stars, movie_id) VALUES (3, 9);
INSERT INTO ratings (stars, movie_id) VALUES (5, 10);
INSERT INTO ratings (stars, movie_id) VALUES (5, 10);
INSERT INTO ratings (stars, movie_id) VALUES (4, 11);
INSERT INTO ratings (stars, movie_id) VALUES (4, 11);
INSERT INTO ratings (stars, movie_id) VALUES (5, 12);
INSERT INTO ratings (stars, movie_id) VALUES (3, 12);
INSERT INTO ratings (stars, movie_id) VALUES (4, 13);
INSERT INTO ratings (stars, movie_id) VALUES (1, 13);

INSERT INTO comments (text, movie_id) VALUES ('great movie', 2);
INSERT INTO comments (text, movie_id) VALUES ('I will watch again', 3);
INSERT INTO comments (text, movie_id) VALUES ('eh', 7);
INSERT INTO comments (text, movie_id) VALUES ('is fun', 4);
INSERT INTO comments (text, movie_id) VALUES ('it made me happy', 11);