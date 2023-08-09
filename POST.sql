--1.-INSERT country:

INSERT INTO country(country)
VALUES  ('Mexico');

SELECT * FROM country
ORDER BY last_update DESC;

--2.-INSERT city:

INSERT INTO city(city,country_id)
VALUES  ('TAXCO',60);

SELECT * FROM city
ORDER BY last_update DESC;

--3.-INSERT address:

INSERT INTO address(address,district,postal_code,phone,city_id)
VALUES('15 CALLE DE LA PLATA','Guerrero','40290','7621066580',603);

SELECT * FROM address
ORDER BY last_update DESC;

--4.- INSERT customer:
INSERT INTO customer(store_id,first_name,last_name,email,address_id,activebool,active)
VALUES  (2,'Francisco','Rivera','paqi15to@gmail.com',5,true,1);
       
SELECT * FROM customer
ORDER BY customer_id DESC;

--5.-DELETE DEL ULTIMO AL PRIMER DATO CREADO

DELETE FROM customer WHERE customer_id = 603;
DELETE FROM address WHERE address_id = 607;
DELETE FROM city WHERE city_id = 603;
DELETE FROM country WHERE country_id = 110;
