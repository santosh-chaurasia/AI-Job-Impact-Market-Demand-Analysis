USE ai_job_market_db;

WITH RankedSalaries AS (
    SELECT 
        CASE WHEN Year <= 2022 THEN 'Before AI (2021-2022)' 
             ELSE 'After AI (2023-2026)' 
        END AS Era,
        Job_Role,
        ROUND(AVG(Avg_Salary_LPA), 2) AS Avg_Salary_LPA,
        ROW_NUMBER() OVER (
            PARTITION BY CASE WHEN Year <= 2022 THEN 'Before AI (2021-2022)' ELSE 'After AI (2023-2026)' END 
            ORDER BY AVG(Avg_Salary_LPA) DESC
        ) AS Salary_Rank
    FROM ai_job_impact
    GROUP BY CASE WHEN Year <= 2022 THEN 'Before AI (2021-2022)' ELSE 'After AI (2023-2026)' END, 
             Job_Role
)
SELECT Era, Job_Role, Avg_Salary_LPA, Salary_Rank
FROM RankedSalaries
WHERE Salary_Rank <= 3
ORDER BY Era, Salary_Rank;