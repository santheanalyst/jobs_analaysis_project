SELECT
    skills,
    ROUND(AVG(salary_year_avg), 0) avg_salary 
FROM  
    job_postings_fact j 
    INNER JOIN skills_job_dim sj ON j.job_id = sj.job_id
    INNER JOIN skills_dim s ON sj.skill_id = s.skill_id
WHERE
    job_title_short = 'Data Analyst' 
    AND salary_year_avg IS NOT NULL
    AND job_work_from_home = True
GROUP BY 
    skills
ORDER BY
    avg_salary DESC
LIMIT 25

/*
Insights on Top Data Analyst Skills and Salaries
High Demand and Specialized Skills:

pyspark leads with the highest average salary of $208,172,
indicating high demand for expertise in this area.
Other high-paying specialized skills include bitbucket ($189,155) 
and couchbase ($160,515), 
reflecting the value placed on version control and NoSQL databases.

Essential Data Tools and Technologies:

Critical data manipulation and analysis tools like pandas ($151,821), 
numpy ($143,513), jupyter ($152,777), and databricks ($141,907) are highly valued.
Machine learning and workflow management skills, 
such as scikit-learn ($125,781) and airflow ($126,103), 
highlight the importance of these technologies 
in data analysis roles.

Programming, Development, and Collaboration:

Proficiency in programming languages like swift ($153,750), 
golang ($145,000), and scala ($124,903) is highly rewarded.
Skills in collaboration and workflow tools, 
such as gitlab ($154,500), jenkins ($125,436), 
and notion ($125,000), 
underscore the necessity for efficient project management and 
teamwork in data projects.
*/