-- cars.cars definition

CREATE TABLE `cars` (
  `id` int NOT NULL AUTO_INCREMENT,
  `vin` varchar(32) NOT NULL,
  `manufacturer` varchar(100) NOT NULL,
  `model` varchar(64) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `color` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
);


-- cars.customers definition

CREATE TABLE `customers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(5) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(64) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `state` varchar(64) NOT NULL,
  `country` varchar(64) NOT NULL,
  `postal_code` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_unique` (`customer_id`)
);


-- cars.sellers definition

CREATE TABLE `sellers` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personal_id` varchar(5) NOT NULL,
  `name` varchar(32) NOT NULL,
  `shop` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sellers_unique` (`personal_id`)
);


-- cars.bills definition

CREATE TABLE `bills` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_number` int NOT NULL,
  `date` date NOT NULL,
  `car_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `seller_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `bills_cars_FK` (`car_id`),
  KEY `bills_customers_FK` (`customer_id`),
  KEY `bills_sellers_FK` (`seller_id`),
  CONSTRAINT `bills_cars_FK` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  CONSTRAINT `bills_customers_FK` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `bills_sellers_FK` FOREIGN KEY (`seller_id`) REFERENCES `sellers` (`id`)
);