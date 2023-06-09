#1
CREATE TABLE `mountains`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45)
);

CREATE TABLE `peaks`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45),
`mountain_id` INT,
CONSTRAINT `fk_peaks_mountains`
FOREIGN KEY (`mountain_id`)
references mountains(`id`)
);

#2
SELECT 
    v.driver_id,
    v.vehicle_type,
    CONCAT_WS(' ', c.first_name, c.Last_name) AS `driver_name`
FROM
    campers AS c
        JOIN
    vehicles AS v ON v.driver_id = c.id; 

#3
SELECT 
    r.starting_point AS route_starting_point,
    r.end_point AS route_ending_point,
    r.leader_id,
    CONCAT_WS(' ', c.first_name, c.Last_name) AS `leader_name`
FROM
    routes AS r
        JOIN
    campers AS c ON c.id = r.leader_id;

#4
CREATE TABLE `mountains`(
`id` INT PRIMARY KEY AUTO_INCREMENT,
`name` VARCHAR(45)
);

CREATE TABLE `peaks` (
    `id` INT PRIMARY KEY AUTO_INCREMENT,
    `name` VARCHAR(45),
    `mountain_id` INT,
    CONSTRAINT `fk_peaks_mountains` FOREIGN KEY (`mountain_id`)
        REFERENCES mountains (`id`)
        ON DELETE CASCADE
);

#5
CREATE DATABASE `company`;
USE `company`;

CREATE TABLE `projects` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `client_id` INT NOT NULL,
    `project_lead_id` INT NOT NULL
);

CREATE TABLE `clients` (
    `id` INT AUTO_INCREMENT PRIMARY KEY,
    `client_name` VARCHAR(100) NOT NULL,
    `project_id` INT NOT NULL
);

CREATE TABLE `employees` (
    `id` INT  AUTO_INCREMENT PRIMARY KEY,
    `first_name` VARCHAR(30) NOT NULL,
    `last_name` VARCHAR(30) NOT NULL,
    `project_id` INT NOT NULL
);

ALTER TABLE `projects`
	ADD CONSTRAINT `fk_projects_clients` 
		FOREIGN KEY (`client_id`)
        REFERENCES `clients` (`id`),
    ADD CONSTRAINT `fk_projects_employees` 
		FOREIGN KEY (`project_lead_id`)
        REFERENCES `employees` (`id`);

ALTER TABLE `clients`
    ADD CONSTRAINT `fk_clients_projects` 
		FOREIGN KEY (`project_id`)
        REFERENCES `projects` (`id`);

ALTER TABLE `employees`
    ADD CONSTRAINT `fk_employees_projects` 
		FOREIGN KEY (`project_id`)
        REFERENCES `projects` (`id`);
