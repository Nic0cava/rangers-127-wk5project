-- adding "is_serviced" column in "car" table
ALTER TABLE car ADD is_serviced BOOLEAN NOT NULL DEFAULT FALSE;
ALTER TABLE car DROP is_serviced;

-- shows car table
SELECT *
FROM car;

-- joins services and car tables, pulls the VIN numbers that have been serviced
SELECT services.service_id, services.VIN, car.is_serviced
FROM car
INNER JOIN services
ON services.VIN = car.VIN
GROUP BY services.service_id, car.is_serviced;

-- procedure to update vehicle's service boolean
CREATE OR REPLACE PROCEDURE update_car_is_service()
AS $$
BEGIN
UPDATE car
SET is_serviced = TRUE
WHERE car.VIN IN (
	SELECT car.VIN
	FROM services
	INNER JOIN car
	ON car.VIN = services.VIN
	GROUP BY car.VIN);
END;
$$
LANGUAGE plpgsql;

-- calling the procedure to ubdate is_servied boolean
CALL update_car_is_service();