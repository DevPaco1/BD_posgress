/*1. Genera una consulta que devuelva la lista de pagos realizados por 
el cliente número 2. Los datos a consultar son:
    - id del cliente
    - nombre
    - apellido
    - email
    - direccion
    - ciudad
    - país
    - monto del pago
    - fecha
*/
SELECT customer.customer_id, first_name, last_name,email,address,city,country,amount,payment_date
FROM customer
INNER JOIN address AS add ON customer.address_id = add.address_id
	INNER JOIN city ON add.city_id = city.city_id
  	INNER JOIN country ON city.country_id = country.country_id
INNER JOIN payment ON customer.customer_id = payment.customer_id
WHERE customer.customer_id = 2;


/*2. Genera una consulta que devuelva la lista de todos los pagos 
recibidos incluyendo datos del cliente y el empleado que registró el pago. 
Los datos a consultar son:
    - id del cliente
    - nombre del cliente
    - apellido del cliente
    - nombre del empleado
    - apellido del empleado
    - monto
    - fecha de pago
*/

SELECT c.customer_id, c.first_name, c.last_name,staff.first_name,staff.last_name,amount,payment_date
FROM customer AS c
INNER JOIN payment ON c.customer_id = payment.customer_id
	INNER JOIN staff ON payment.staff_id = staff.staff_id
WHERE c.customer_id = 2;



/*3. Genera una consulta que devuelva la lista de DVDs que se 
tiene en inventario. Los datos a consultar son:
    - id de la película
    - título de la película
    - codigo de inventario
    
    - Bonus: cantidad de DVDs en existencia de cada película
*/

SELECT film.film_id,title,inventory_id
From film
INNER JOIN inventory ON film.film_id = inventory.film_id;

/*4. Genera una consulta que agregue una nueva tabla 
llamada film_reviews que almacenará opiniones acerca de las películas, 
con las siguientes columnas:
    - review_id, representa el identificador único de los registros
    - film_id, representa la relación entre las opiniones y las películas
    - review, almacenará el texto de la opinión
*/


/*5. Genera una consulta para agregar 5 opiniones para 5 películas 
diferentes (total 25 opiniones), que varíen entre 'Excellent', 'Awesome', 'Cool', 'Beautiful'.
*/



/*6. Genera una consulta que devuelva la lista de opiniones de cada película. Los datos a consultar son:
    - Opinión
    - Título de la película
*/



/*7. Genera una consulta que devuelva la lista de películas y los actores que participan en ellas. Los datos a consultar son:
    - Título de la película
    - Nombre del actor
    - Apellido del actor
*/