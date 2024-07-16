# Introduction
This project delves into the dynamic landscape of data analytics careers, highlighting 🔝 top-paying jobs, 🔥 in-demand skills, and 📈 where high demand intersects with 💰 lucrative salaries. 

🕵️‍♂️ Check out SQL queries and insights into the future of data analysts in today's job market here: [project_sql folder](/project_sql/)

# Background

In today's data-driven world, the role of a Data Analyst is pivotal across industries, driving decision-making through insights derived from complex datasets. This project aims to provide a comprehensive analysis of the Data Analyst job market, focusing on identifying 🔝 top-paying positions, 🔥 in-demand skills, and the intersection where high demand meets 💰 lucrative salaries.

Through detailed research and analysis, this project explores trends shaping the future of data analytics careers. Dive into SQL queries, insightful findings, and trends that illuminate pathways for aspiring and seasoned Data Analysts alike.

Data hails from [csv files](https://lukebarousse.com/sql). The data is fully packed with insights on job titles, salaries, locations, and essential skills.

### The questions I wanted to discover through my SQL queries were:

1. What are the top- paying data analyst jobs?

2. What skills are most in demand for data analysts?

3. What skills are most in demand for data analysts?

4. Which skills are associated with higher salaries?

5. What are the most optimal skills to learn?

# Tools I Used

- **SQL:** SQL serves as the backbone of my analysis, enabling robust querying and data manipulation.
- **PostgreSQL:** Chosen as the database management system, PostgreSQL provides a reliable platform for storing and accessing data.
- **VS Code:** Used as the go-to tool for database management and executing SQL queries, enhancing efficiency and workflow.
- **Git & GitHub:** Essential for version control, Git and GitHub facilitate collaboration and sharing of SQL scripts, ensuring seamless project management and code maintenance.

# The Analysis

In this project, I approached each SQL query with the goal of investigating specific aspects of the data analyst job market. Here's how I tailored each query to address different inquiries:

### 1. Top Paying Data Analyst Jobs 
To identify the highest paying data analyst positions, I filtered job postings by average yearly salary and location. This query highlights the top-paying data analyst roles, showcasing the most lucrative opportunities available, sorted in descending order by salary.

``` sql
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
```
- **Highest Paying Roles:** The top-paying data analyst roles listed have average yearly salaries ranging from $650,000.0 to $184,000.0.

- **Variety of Titles:** Job titles vary from traditional "Data Analyst" roles to more senior positions such as "Director of Analytics" and "Principal Data Analyst," indicating a spectrum of career levels and responsibilities.

- **Remote Opportunities:** Several positions, such as "Data Analyst (Hybrid/Remote)" and "Principal Data Analyst (Remote)," offer remote or hybrid work options, reflecting a trend towards flexible work arrangements in data analytics.

- **Industry Diversity:** Companies span various industries including technology (Meta, Pinterest), healthcare (Uclahealthcareers), finance (SmartAsset), and telecommunications (AT&T), showcasing the demand for data analysts across diverse sectors.

- **Recent Postings:** Job postings range from early 2023 to late 2023, indicating ongoing demand for data analysts throughout the year.

![Top Paying Roles] (assets\Screenshot 2024-07-16 142915.png)



# What I Learned

# Conclusions