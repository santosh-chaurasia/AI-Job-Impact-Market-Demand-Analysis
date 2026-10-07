USE ai_job_market_db;

SELECT 
    Job_Role,
    CASE WHEN Year <= 2022 THEN 'Before AI (2021-2022)' 
         ELSE 'After AI (2023-2026)' 
    END AS Era,
    ROUND(AVG(Vacancies * 1.0), 2) AS Avg_Vacancies,
    ROUND(AVG(Avg_Salary_LPA), 2) AS Avg_Salary_LPA
FROM ai_job_impact
GROUP BY Job_Role, 
         CASE WHEN Year <= 2022 THEN 'Before AI (2021-2022)' 
              ELSE 'After AI (2023-2026)' 
         END
ORDER BY Job_Role, Era;