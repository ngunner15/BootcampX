SELECT cohorts.name AS cohort, COUNT(assignment_submissions.*) AS total_submissions
FROM assignment_submissions
INNER JOIN students
ON student_id = students.id
INNER JOIN cohorts
ON cohort_id = cohorts.id
GROUP BY cohort
ORDER BY total_submissions DESC;