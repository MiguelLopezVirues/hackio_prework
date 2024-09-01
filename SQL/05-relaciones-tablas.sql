
-- Ejercicio  1: Encuentra el nombre de las pistas y los títulos de los álbumes a los que pertenecen.
SELECT t."Name" Track_name, a."Title" Album_title
FROM "Track" t 
INNER JOIN "Album" a 
	ON t."AlbumId" = a."AlbumId" ;

-- Ejercicio 2: Lista los nombres de los artistas y los títulos de sus álbumes. Ordena los resultados por artista.
SELECT a."Name" , a2."Title" 
FROM "Artist" a 
INNER JOIN "Album" a2 
	ON a."ArtistId" = a2."ArtistId" 
ORDER BY a."Name";

-- Ejercicio 3: Encuentra los nombres de los clientes y los totales de sus facturas. Extrae solo los 5 clientes con mayor total. 
SELECT "FirstName" , "LastName" , SUM(i."Total") invoice_total
FROM "Customer" c 
INNER JOIN "Invoice" i 
	ON c."CustomerId" = i."CustomerId"
GROUP BY "FirstName", "LastName" 
ORDER BY SUM(i."Total") DESC
LIMIT 5;

-- Ejercicio 4: Lista los nombres de los empleados y los nombres de los clientes que les han sido asignados.
SELECT e."FirstName" employee_name, c."FirstName" customer_name
FROM "Employee" e 
INNER JOIN "Customer" c 
	ON e."EmployeeId" = c."SupportRepId" ;

-- Ejercicio 5: Muestra los ID de las facturas y los nombres de las pistas incluidas en esas facturas.
SELECT i."InvoiceId" ,t."Name" track_name
FROM "Invoice" i 
INNER JOIN "InvoiceLine" il 
	ON i."InvoiceId" = il."InvoiceId" 
INNER JOIN "Track" t 
	ON il."TrackId" = t."TrackId" ;

-- Ejercicio 6: Encuentra los nombres de los artistas y los géneros de sus pistas.
SELECT a."Name" artist_name, g."Name" genre
FROM "Artist" a 
INNER JOIN "Album" a2  
	ON a."ArtistId" = a2."ArtistId" 
INNER JOIN "Track" t 
	ON a2."AlbumId"  = t."TrackId" 
INNER JOIN "Genre" g 
	ON t."GenreId" = g."GenreId" ;

--  Ejercicio 7: Muestra los nombres de las pistas y el tipo de medio en el que están disponibles.
SELECT t."Name" AS track_name, m."Name" as mediatype_name
FROM "Track" t 
INNER JOIN "MediaType" m 
    ON t."MediaTypeId" = m."MediaTypeId" ;

-- Ejercicio 8: Encuentra todas las pistas y, si existen, muestra los nombres de los géneros a los que pertenecen. Incluye también las pistas que no tienen un género asignado.**
SELECT t."Name" track_name, g."Name" as Genre
FROM "Track" t
LEFT JOIN "Genre" g
    ON t."GenreId" = g."GenreId" ;

-- Ejercicio 9: Muestra todos los clientes y, si existen, muestra las facturas que han realizado. Incluye también los clientes que no tienen ninguna factura.
SELECT c."FirstName" , COUNT(i."InvoiceId")
FROM "Customer" c 
LEFT JOIN "Invoice" i 
    ON c."CustomerId" = i."CustomerId"
GROUP BY c."FirstName";

-- Ejercico 10: Encuentra todos los álbumes y, si existen, muestra los nombres de los artistas que los crearon. Incluye también los álbumes que no tienen un artista asignado (aunque en este caso en la base de datos de Chinook, todos los álbumes tienen un artista asignado).
SELECT a."Title" Album_name, a2."Name" Artist_name
FROM "Album" a 
LEFT JOIN "Artist" a2 
    ON a."ArtistId" = a2."ArtistId" ;

-- Ejercicio 11: Cuenta cuántas pistas hay en cada género. Ordena los generos en función del número de canciones de mayor a menor. 
SELECT g."Name" Genre, COUNT(t."TrackId")
FROM "Genre" g 
LEFT JOIN "Track" t 
    ON g."GenreId" = t."GenreId" 
GROUP BY g."Name" 
ORDER BY COUNT(t."TrackId") DESC;

--  Ejercicio 12: Muestra los títulos de los álbumes y la duración total de todas las pistas en cada álbum.
SELECT a."Title" , SUM(t."Milliseconds") total_duration
FROM "Album" a 
LEFT JOIN "Track" t 
    ON a."AlbumId" = t."AlbumId" 
GROUP BY a."Title" ;
    
-- Ejercicio 14: Encuentra los nombres de los clientes y el total gastado por cada uno.
SELECT c."FirstName" , SUM(i."Total") total_spent
FROM "Customer" c 
LEFT JOIN "Invoice" i 
    ON c."CustomerId" = i."CustomerId" 
GROUP BY c."FirstName" ;

-- Ejercicio 15: Encuentra todos los empleados y, si existen, muestra los nombres de los clientes que tienen asignados. Incluye también los empleados que no tienen clientes asignados.
SELECT e."FirstName" employee, c."FirstName" customer
FROM "Employee" e 
LEFT JOIN "Customer" c 
    ON e."EmployeeId" = c."SupportRepId" ;

