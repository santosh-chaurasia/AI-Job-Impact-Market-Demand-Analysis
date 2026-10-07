USE ai_job_market_db;

SELECT 
    Hiring_Difficulty,
    COUNT(*) AS Total_Records,
    ROUND(AVG(Avg_Salary_LPA), 2) AS Avg_Salary_LPA
FROM ai_job_impact
GROUP BY Hiring_Difficulty
ORDER BY Avg_Salary_LPA DESC;