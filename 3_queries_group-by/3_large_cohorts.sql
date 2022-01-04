SELECT cohorts.name as cohort_name, COUNT(students.*) as students_count
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name
HAVING COUNT(students.*) >= 18
ORDER BY students_count;