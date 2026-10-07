USE ai_job_market_db;
 
SELECT 
    Year,
    SUM(Vacancies) AS Total_Vacancies,
    ROUND(AVG(Avg_Salary_LPA), 2) AS Overall_Avg_Salary_LPA,
    ROUND(AVG(Portfolio_Weightage_Percentage * 1.0), 2) AS Avg_Portfolio_Weightage
FROM ai_job_impact
GROUP BY Year
ORDER BY Year;