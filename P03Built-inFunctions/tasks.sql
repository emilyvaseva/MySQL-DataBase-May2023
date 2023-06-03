#1
SELECT 
    `title`
FROM
    `books`
WHERE
    'The' = SUBSTRING(`title`, 1, 3)
order by `id`;

#2
SELECT 
    REPLACE(`title`, 'The', '***')
FROM
    `books`
WHERE
    'The' = SUBSTRING(`title`, 1, 3)
ORDER BY `id`;

#3
SELECT 
    round(sum(cost),2)
FROM
    `books`;
    
#4
SELECT 
    CONCAT_WS(' ', first_name, last_name) AS `Full Name`,
    TIMESTAMPDIFF(DAY, born, died) AS `Days Lived`
FROM
    `authors`;

#5
SELECT 
    title
FROM
    `books`
WHERE
    title LIKE '%HARRY%';