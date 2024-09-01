
-- Ejercicio 1: Seleccionar todos los campos de la tabla `customers` y renombrar la columna `CustomerId` a `ID`.
SELECT "CustomerId" AS "ID", "FirstName" , "LastName", "Company", "Address" , "City" , "State" , "Country" , "PostalCode" , "Phone" , "Fax" , "Email" , "SupportRepId" 
FROM "Customer";


-- Ejercicio 2: Seleccionar los nombres de los clientes (`FirstName`, `LastName`) y renombrar las columnas a `First_Name` y `Last_Name`.
SELECT "FirstName" "First_name", "LastName" "Last_name"
FROM "Customer" c ;

-- Ejercicio 3: Seleccionar los títulos de las pistas (`Name`) que duran más de 300,000 milisegundos y renombrar la columna a `Track_Title`.
SELECT "Name" "Track_Title"
FROM "Track" t 
WHERE "Milliseconds" > 300000;

-- Ejercicio 4: Seleccionar el nombre y el correo electrónico de los clientes que viven en Brasil y renombrar las columnas a `Name` y `Email_Address`.
SELECT "FirstName" "Name", "Email" "Email_Address"
FROM "Customer" c ;

-- Ejercicio 5: Seleccionar los nombres de las playlists (`Name`) que contienen la palabra 'Music' y renombrar la columna a `Playlist_Name`.
SELECT "Name" "Playlist_Name"
FROM "Playlist" p 
WHERE "Name" LIKE '%Music%';


-- Ejercicio 6: Seleccionar los nombres de los empleados (`FirstName`, `LastName`) que trabajan como 'Sales Support Agent' y renombrar las columnas a `First_Name` y `Last_Name`.
SELECT "FirstName" "First_name","LastName" "Last_name"
FROM "Employee" e 
WHERE e."Title" = 'Sales Support Agent';

-- Ejercicio 7: Seleccionar los nombres de los géneros (`Name`) y renombrar la columna a `Genre_Name`.
SELECT "Name" Genre_name
FROM "Genre" g ;

-- Ejercicio 8: Seleccionar los nombres de los empleados (`FirstName`, `LastName`) que reportan al empleado con `EmployeeId` = 1 y renombrar las columnas a `First_Name` y `Last_Name`.
SELECT "FirstName" First_Name, "LastName" Last_Name
FROM "Employee" e 
WHERE "ReportsTo" = 1;

-- Ejercicio 9: Seleccionar los nombres de las pistas (`Name`) y su duración en minutos (convertido de milisegundos) que duran más de 5 minutos y renombrar las columnas a `Track_Name` y `Duration_Minutes`.
SELECT "Name" Track_name, "Milliseconds" / (1000*60) AS Duration_Minutes
FROM "Track" t 
WHERE  ("Milliseconds" / (1000*60)) > 5;
-- Ejercicio 10: Encuentra las pistas que tienen un precio mayor a 1.00 y una duración menor a 300,000 milisegundos. Muestra el nombre de la pista y su duración.
SELECT "Name" Track_name, "Milliseconds" 
FROM "Track" t 
WHERE  "Milliseconds" < 300000 AND "UnitPrice" > 1;

-- Ejercicio 11: Lista los empleados que trabajan en la ciudad 'Seattle' y cuyo estado es 'WA'. Muestra el nombre y el apellido del empleado.
SELECT "FirstName" First_Name, "LastName" Last_Name
FROM "Employee" e 
WHERE "City" = 'Seattle' AND "State" = 'WA';


-- Ejercicio 12: Encuentra los clientes que están en el país 'USA' y tienen asignado un representante de soporte con un ID mayor o igual a 5. Muestra el nombre del cliente y su ID de soporte.
SELECT "FirstName" , "SupportRepId" 
FROM "Customer" c 
WHERE "Country" = 'USA' AND "SupportRepId" >= 5;
-- Ejercicio 13: Selecciona las facturas que tienen un total mayor a 10.00 y pertenecen a clientes con ID menor a 50. Muestra el ID de la factura y el total.
SELECT "InvoiceId" , "Total" 
FROM "Invoice" i 
WHERE "Total" > 10 AND "CustomerId" < 50;

-- Ejercicio 14: Lista las pistas que tienen una duración mayor a 250,000 milisegundos y pertenecen a un tipo de medio con ID 1 o 2. Muestra el nombre de la pista y el tipo de medio.
SELECT "Name" , "MediaTypeId" 
FROM "Track" t 
WHERE "Milliseconds" > 250000 AND "TrackId" IN (1,2);

