use sys;



create table films
(film_id int,
film_name varchar(30),
category varchar(30)
);

insert into films values (1, 'Assassins Creed: Embers', 'Animations');
insert into films values (2, 'Real Steel(2012)', 'Animations');
insert into films values (3, 'Alvin and the Chipmunks', 'Animations');
insert into films values (4, 'The Adventures of Tin Tin', 'Animations');
insert into films values (5, 'Safe (2012)', 'Action');
insert into films values (6, 'Safe House(2012)', 'Action');
insert into films values (7, 'Marley and me', 'Romance');


create table actors
(id int,
actor_name varchar(30),
film_id int
);

insert into actors values (1, 'Adam Smith', 1);
insert into actors values (2, 'Ravi Kumar', 2);
insert into actors values (3, 'Susan Davidson', 5);
insert into actors values (4, 'Lee Pong', 6);
insert into actors values (5, 'Bruce Lee', NULL);



-- SORU1: Tüm filmleri, film türlerini ve filimlerde oynayan aktörleri listeleyiniz.
-- 1. YOL: LEFT JOIN
SELECT A.film_name, A.category, B.actor_name
FROM films AS A
LEFT JOIN actors AS B
ON B.film_id = A.film_id;

-- 2. YOL RIGHT JOIN
SELECT A.film_name,A.category, B.actor_name
FROM actors AS B
RIGHT JOIN films AS A
ON B.film_id = A.film_id;

-- SORU2: Tüm aktörleri ve filmlerini listeleyiniz.
-- 1. YOL: LEFT JOIN
SELECT  B.actor_name, A.film_name
FROM actors AS B
left JOIN films AS A
ON B.film_id = A.film_id;

-- 2. YOL RIGHT JOIN
SELECT  B.actor_name, A.film_name
FROM films AS A
right JOIN actors AS B
ON B.film_id = A.film_id;