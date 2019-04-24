Create table FrequentBrowsers
SELECT 
    people.id AS person_id,
    COUNT(DISTINCT siteId) AS num_sites_visited
FROM
    people
        INNER JOIN
    visits ON people.id = visits.personId
GROUP BY people.id
ORDER BY num_sites_visited DESC
LIMIT 10;