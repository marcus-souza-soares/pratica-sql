SELECT COUNT(e."endDate") as "currentExperiences"
FROM experiences e;

SELECT "userId" as "id", COUNT(id) as "educations"
FROM educations
GROUP BY "userId"
ORDER BY "educations" DESC;

SELECT u.name as "writer", COUNT(t.id) as "testimonailCount"
FROM testimonials t
JOIN users u ON
t."writerId" = u.id
GROUP BY u.name;

SELECT MAX(j.salary) as "maximumSalary",  r.name as role
FROM jobs j
JOIN roles r ON
r.id = j."roleId"
AND j.active = true
GROUP BY role;
