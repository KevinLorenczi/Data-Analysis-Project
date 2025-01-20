
/* 
Question: What skills are required for the top-paying data anaylst jobs?
- Use the top 10 highest-paying Data Analyst jobs from first query
- Add the top 10 highest-paying Data Analyst jobs from first query
- Why? It provides a detailed look at which high-paying jobs demand certain skills,
  helping job seekers understand which skills to develop that align with top salaries


Own notes
 adding a CTE 
 using a inner join in the CTE as if we use LEFT join it is incorrect as we
 are only looking for skills associated with a salary,
 so we INNER JOIN top_paying_jobs table with the company_dim table.

*/

WITH top_paying_jobs AS (
    SELECT
        job_id,
        job_title,
        salary_year_avg,
        name AS company_name
    FROM
        job_postings_fact
    LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
    WHERE
        job_title_short = 'Data Analyst' AND 
        job_location = 'Anywhere' AND
        salary_year_avg IS NOT NULL
    ORDER BY 
        salary_year_avg DESC
    LIMIT 10
)

SELECT 
    top_paying_jobs.*,  -- selects all columns from top_paying_jobs table
    skills_dim.skills
FROM top_paying_jobs
INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC;