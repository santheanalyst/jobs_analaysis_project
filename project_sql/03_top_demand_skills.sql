SELECT
    skills,
    COUNT(sj.job_id) demand_count
FROM  
    job_postings_fact j 
    INNER JOIN skills_job_dim sj ON j.job_id = sj.job_id
    INNER JOIN skills_dim s ON sj.skill_id = s.skill_id
WHERE
    job_title_short = 'Data Analyst'
GROUP BY 
    skills
ORDER BY
    demand_count DESC
LIMIT 5

