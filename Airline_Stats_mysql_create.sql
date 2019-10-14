CREATE TABLE `departure_statistics` (
	`airline_statistics_id` INT NOT NULL AUTO_INCREMENT,
	`airport_id` INT NOT NULL,
	`airline_id` INT NOT NULL,
	`date` DATE NOT NULL,
	`flight_number` INT NOT NULL,
	`tail_number` VARCHAR(255) NOT NULL,
	`destination_airport_cd` VARCHAR(255) NOT NULL,
	`scheduled_departure_time` TIME NOT NULL,
	`actual_departure_time` TIME NOT NULL,
	`scheduled_elapsed_time` INT NOT NULL,
	`actual_elapsed_time` INT NOT NULL,
	`departure_delay` INT NOT NULL,
	`wheels_off_time` TIME NOT NULL,
	`taxi_out_time` INT NOT NULL,
	`delay_career` INT NOT NULL,
	`delay_weather` INT NOT NULL,
	`delay_national_aviation_system` INT NOT NULL,
	`delay_security` INT NOT NULL,
	`delay_late_aircraft_arrival` INT NOT NULL,
	PRIMARY KEY (`airline_statistics_id`)
);

CREATE TABLE `airport_ref` (
	`airport_id` INT NOT NULL AUTO_INCREMENT,
	`airport_name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`airport_id`)
);

CREATE TABLE `airline_ref` (
	`airline_id` INT NOT NULL,
	`airline_name` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`airline_id`)
);

ALTER TABLE `departure_statistics` ADD CONSTRAINT `departure_statistics_fk0` FOREIGN KEY (`airport_id`) REFERENCES `airport_ref`(`airport_id`);

ALTER TABLE `departure_statistics` ADD CONSTRAINT `departure_statistics_fk1` FOREIGN KEY (`airline_id`) REFERENCES `airline_ref`(`airline_id`);

