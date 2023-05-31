#1
SELECT `id`, `first_name`, `last_name`, `job_title`  FROM `employees`
ORDER BY `id`;

#2
SELECT `id`, concat_ws(' ',`first_name`, `last_name`) AS `full_name`, `job_title`, `salary`  FROM `employees`
WHERE `salary` >1000
ORDER BY `id`;

#3
UPDATE `employees` 
SET   `salary` = `salary` + 100
WHERE  `job_title` = 'Manager';
SELECT  `salary`  FROM `employees`;

#4
CREATE VIEW `view_employees` AS
SELECT *  FROM `employees`view_employees
ORDER BY `salary` DESC
LIMIT 1;
SELECT * FROM `view_employees`;

#5
SELECT * FROM `employees`
WHERE `salary` >= 1000 AND `department_id` = 4
ORDER BY `id`;

#6
DELETE FROM `employees` 
WHERE `department_id` IN (1 , 2);

SELECT * FROM `employees`;