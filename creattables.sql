CREATE TABLE Mechanic (
  mechanic_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE Parts (
  parts_id SERIAL PRIMARY KEY,
  part VARCHAR(50)
);

CREATE TABLE Services (
  service_id SERIAL PRIMARY KEY,
  description VARCHAR(200),
  price NUMERIC(10,2),
  customer_id INTEGER,
  VIN VARCHAR(25)
);

CREATE TABLE Car (
  car_id SERIAL PRIMARY KEY,
  car_model VARCHAR(50),
  car_make VARCHAR(50),
  year_ VARCHAR(20),
  VIN VARCHAR(25),
  price NUMERIC(10,2)
);

ALTER TABLE car ADD CONSTRAINT VIN_unique UNIQUE (VIN);

CREATE TABLE Customer (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(50),
  phone_number VARCHAR(50)
);

CREATE TABLE Salesperson (
  salesperson_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50)
);

CREATE TABLE Service_Mechanic (
  mechanic_id INTEGER,
  service_id INTEGER,
  FOREIGN KEY (service_id) REFERENCES Services(service_id),
  FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
);

CREATE TABLE Invoice_Info (
  invoice_id SERIAL PRIMARY KEY,
  salesperson_id INTEGER,
  car_id INTEGER,
  total NUMERIC(10,2),
  customer_id INTEGER,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (salesperson_id) REFERENCES Salesperson(salesperson_id)
);

CREATE TABLE Service_Parts  (
  service_id INTEGER,
  parts_id INTEGER,
  FOREIGN KEY (service_id) REFERENCES Services(service_id)
);









