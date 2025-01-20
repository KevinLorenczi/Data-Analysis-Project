# Introduction
 Explore the data job market! Focusing on Data analyst roles, this project explores top-paying
 jobs, in-demand skills, and where high demand meets high salary in data analytics.

SQL queries? Find them here: [project_sql folder](/project_sql/)


# Background 
Driven by my curiousitly to understand the data analyst job market, I have created this project with the idea to pinpoint top-paid and in-demand skills, streamlining others work to find optimal jobs.

Data has been provided through Luke Barousse SQL course [SQL Course](https://lukebarousse.com/sql).


### The questions I wanted to answer through my SQL queries were:

1. What are the top-paying data analyst jobs?
2. What skills are required for these top-paying jobs?
3. Which skills are most in demand for data analysts?
4. Which skills are associated with higher salaries?
5. What are the most optimal skills to learn?

- Tools I Used
- The Analysis
- What I Learned
- Conclusions

# Tools I Used

For my research into the data analyst job market, I used the power of several key toold:

- **SQL :** The main body of my analysis, allowing me to query the database and reveal critical insights.
- **PostgreSQL :** The chosen database management system, ideal for managing the job posting data.
- **Visual Studio Code :** My go-to for database management and executing SQL queries as I have familiar experience using it during my time spent in college.
- **Git & GitHub :** Essential for version control and sharing my analysis and SQL scripts to the world, ensuring collaboration and project tracking.


# The Analysis
The goal of each query for this project is to investigate soecific aspects of the data analyst job market. Here is an example of how I approached my first question:

### 1. Top Paying Data Analyst Jobs
To find out the highest-paying roles I filtered data analyst positions by average yearly salary and the location, focusing on remote jobs. This query highlights the high paying opportunities in this job domain.

```sql
SELECT
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
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
LIMIT 10;
```

Here's the breakdown of the top data analyst jobs:
- **Wide Salary Range** Top 10 paying data analyst roles span from $184,000 to $650,000,
indicating significant salary potential in the field.
- **Diverse Employers** Companies like Meta are a part of those offering high salaries, showing a broad interest across different industries.
- **Job Titles Variety** There is a high number of diverse job titles, from Data Analyst to Director of Analytics, reflecting varied roles and specializations within data analytics.


# What I Learned

I have learned a number of SQL skills during this journey I have set out to accomplish:

-**Complex Query understanding :** Becoming comfortable with the art of advanced SQL, merging tables and understanding WITH clauses.

-**Data Aggregation :** Got an amazing level up with GROUP BY and turned aggregate functions like COUNT() and AVG() into my arsenal of knowledge.

-**Analytical Wizardry :** Increased my overall knowledge and my real-world problem-solving skills, transforming questions into actionable,insightful queries.


# Conclusions

### Closing Thoughts

This project has gifted me with the SQL skills and has provided amazing insights into the data analyst job market. My findings from my analysis serve as a guide to prioritize skill development and job searching efforts. Aspiring data analysts like myself can better position themselves by equipping the important skills and knowledge for high-demand and high-salary jobs. This project has highlighted the importance of continous growth, learning and adaptation to emerging trends in the data analytics field.