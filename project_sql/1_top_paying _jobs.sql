SELECT 
    job_id,
    name company_name,
    job_title,
    job_location,
    salary_year_avg,
    job_schedule_type,
    job_posted_date
FROM
    job_postings_fact j LEFT JOIN
    company_dim c ON j.company_id = c.company_id
WHERE
    job_title_short = 'Data Analyst' AND 
    job_location = 'Anywhere'  AND
    salary_year_avg IS NOT NULL
ORDER BY
    salary_year_avg DESC
LIMIT 10

