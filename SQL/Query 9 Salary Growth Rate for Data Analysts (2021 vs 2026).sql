USE ai_job_market_db;

SELECT
    ROUND(AVG(CASE WHEN Year = 2021 THEN Avg_Salary_LPA END), 2) AS Salary_2021,
    ROUND(AVG(CASE WHEN Year = 2026 THEN Avg_Salary_LPA END), 2) AS Salary_2026,
    ROUND((AVG(CASE WHEN Year = 2026 THEN Avg_Salary_LPA END) - AVG(CASE WHEN Year = 2021 THEN Avg_Salary_LPA END)) * 100.0
          / AVG(CASE WHEN Year = 2021 THEN Avg_Salary_LPA END), 2) AS Growth_Percentage
FROM ai_job_impact
WHERE Job_Role = 'Data Analyst';