CREATE OR REPLACE FUNCTION add_service_parts(
	service_id INTEGER,
	parts_id INTEGER
)
RETURNS void
AS $$
BEGIN
	INSERT INTO service_parts
	VALUES(service_id, parts_id);
END;
$$
LANGUAGE plpgsql;

-- Customer inserts
SELECT *
FROM customer;

SELECT add_customer(1, 'Jewell', 'Hoffman', 'jhoffman@gmail.com', '202-678-2887');
SELECT add_customer(2, 'Evan', 'Banks', 'ebanks@gmail.com', '206-689-2737');
SELECT add_customer(3, 'Pat', 'Winters', 'pwinters@gmail.com', '706-349-4477');
SELECT add_customer(4, 'Luke', 'Hawkins', 'lhawkins@gmail.com', '708-357-4572');
SELECT add_customer(5, 'Christian', 'Frazier', 'cfrazier@gmail.com', '710-348-2277');
SELECT add_customer(6, 'Sean', 'Williams', 'swilliams@gmail.com', '408-457-1582');

-- Car inserts
SELECT *
FROM car;

SELECT add_car(1, 'FOCUS', 'FORD', '2007', '1FTEW1E80FFC75589', 14985.0);
SELECT add_car(2, '3 SPORT', 'MAZDA', '2013', '4FCU42X1NUM02211', 17925.0);
SELECT add_car(3, 'A3', 'AUDI', '2005', 'WA1LFCFP5BA069968', 24860.0);
SELECT add_car(4, '300', 'CHRYSLER', '2013', '1C3AL56R04N114057', 28715.0);

-- Salesperson inserts
SELECT *
FROM salesperson;

SELECT add_salesperson(1, 'Lydia', 'Shannon');
SELECT add_salesperson(2, 'Laurel', 'James');
SELECT add_salesperson(3, 'Jay', 'Logan');
SELECT add_salesperson(4, 'Abby', 'Robbins');

-- Mechanic inserts
SELECT *
FROM mechanic;

SELECT add_mechanic(1, 'Joseph', 'Murillo');
SELECT add_mechanic(2, 'Cody', 'Erickson');
SELECT add_mechanic(3, 'Davis', 'Martinez');
SELECT add_mechanic(4, 'Kelley', 'Harding');

-- Parts inserts
SELECT *
FROM parts;

SELECT add_parts(1, 'Oil Filter');
SELECT add_parts(2, 'Serpentine Belt');
SELECT add_parts(3, 'Battery');
SELECT add_parts(4, 'Spark Plug');

-- invoice_info inserts
SELECT *
FROM invoice_info;

SELECT add_invoice_info(1, 3, 2, 17925.0, 5);
SELECT add_invoice_info(2, 4, 3, 24860.0, 3);
SELECT add_invoice_info(3, 1, 1, 14985.0, 2);
SELECT add_invoice_info(4, 2, 4, 28715.0, 1);

-- services
SELECT *
FROM services;

SELECT add_services(1,'Went in for an oil change and an oil filter replacement', 85.00, 6, 'KNAFB121625150469');
SELECT add_services(2, 'Went in for battery replacement and basic maintenance', 145.00, 1, '1C3AL56R04N114057');
SELECT add_services(3,'Went in for two spark plug replacements', 174.00, 5, '4FCU42X1NUM02211');
SELECT add_services(4,'Went in for a serpentine belt replacement', 123.00, 4, '1FVACWCT67HY22127');

-- service_mechanic inserts
SELECT *
FROM service_mechanic;

SELECT add_service_mechanic(1, 1);
SELECT add_service_mechanic(3, 1);
SELECT add_service_mechanic(1, 2);
SELECT add_service_mechanic(2, 3);
SELECT add_service_mechanic(4, 3);
SELECT add_service_mechanic(2, 4);


-- service_parts inserts
SELECT *
FROM service_parts;

SELECT add_service_parts(1, 1);
SELECT add_service_parts(4, 2);
SELECT add_service_parts(3, 4);
SELECT add_service_parts(3, 4);
SELECT add_service_parts(2, 3);
