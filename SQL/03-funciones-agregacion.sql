
/* MIN y MAX */

-- Ejercicio 1: Encontrar la duración mínima de las pistas en milisegundos.
SELECT MIN("Milliseconds")
FROM "Track" t ;

-- Ejercicio 2: Encontrar la duración máxima de las pistas en milisegundos.
SELECT MAX("Milliseconds")
FROM "Track" t ;

-- Ejercicio 3: Encontrar el precio mínimo de las pistas.
SELECT MIN("UnitPrice")
FROM "Track" t ;

-- Ejercicio 4: Encontrar el precio máximo de las pistas.
SELECT MAX("UnitPrice")
FROM "Track" t ;

-- Ejercicio 5: Encontrar la fecha mínima de la factura.
SELECT MIN("InvoiceDate")
FROM "Invoice" i ;

-- Ejercicio 6: Encontrar la fecha máxima de la factura.
SELECT MAX("InvoiceDate")
FROM "Invoice" i ;

/* COUNT y SUM */

-- Ejercicio 7: Contar el número total de pistas.
SELECT COUNT("TrackId")
FROM "Track" t ;

-- Ejercicio 8: Contar el número de clientes en Brasil.
SELECT COUNT("CustomerId")
FROM "Customer" c 
WHERE "Country" = 'Brasil';

-- Ejercicio 9: Sumar la duración total de todas las pistas en milisegundos.
SELECT SUM("Milliseconds")
FROM "Track" t ;

-- Ejercicio 10: Contar el número de empleados con el título 'Sales Support Agent'.
SELECT COUNT("EmployeeId")
FROM "Employee" e 
WHERE "Title" = 'Sales Support Agent';

-- Ejercicio 11: Sumar el total de las cantidades en las facturas.
SELECT SUM("Total")
FROM "Invoice" i ;

/* AVG, STDDEV, VARIANCE */

-- Ejercicio 12: Calcular la duración media de las pistas en milisegundos.
SELECT AVG("Milliseconds")
FROM "Track" t ;

-- Ejercicio 13: Calcular el precio medio de las pistas.
SELECT SUM("UnitPrice")
FROM "Track" t ;

-- Ejercicio 14: Calcular la desviación estándar de la duración de las pistas.
SELECT STDDEV("Milliseconds")
FROM "Track" t ;

-- Ejercicio 15: Calcular la varianza de la duración de las pistas.
SELECT VARIANCE("Milliseconds")
FROM "Track" t ;

-- Ejercicio 16: Calcular la desviación estándar del precio de las pistas.
SELECT STDDEV("UnitPrice")
FROM "Track" t ;

/* CONCAT */

-- Ejercicio 17: Concatenar el nombre y el apellido de los clientes.
SELECT CONCAT("FirstName",' ',"LastName")
FROM "Customer" c ;

