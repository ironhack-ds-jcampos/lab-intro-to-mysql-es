-- cars.bills definition

CREATE TABLE `bills` (
  `bill_number` int NOT NULL,
  `date` date NOT NULL,
  `car_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  PRIMARY KEY (`bill_number`)
);


-- cars.cars definition

CREATE TABLE `cars` (
  `vin` varchar(32) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `model` varchar(64) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL
);


-- cars.customers definition

CREATE TABLE `customers` (
  `customer_id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `postal_code` varchar(5) NOT NULL,
  PRIMARY KEY (`customer_id`),
  UNIQUE KEY `customers_unique` (`customer_id`)
);


-- cars.sellers definition

CREATE TABLE `sellers` (
  `personal_id` varchar(5) NOT NULL,
  `name` varchar(32) NOT NULL,
  `shop` varchar(100) NOT NULL,
  PRIMARY KEY (`personal_id`),
  UNIQUE KEY `sellers_unique` (`personal_id`)
);