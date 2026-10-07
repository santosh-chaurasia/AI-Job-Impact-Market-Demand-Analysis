USE ai_job_market_db;

SELECT 
    Job_Role,
    ROUND(AVG(CASE WHEN Year = 2021 THEN Vacancies * 1.0 END), 0) AS Vacancies_2021,
    ROUND(AVG(CASE WHEN Year = 2026 THEN Vacancies * 1.0 END), 0) AS Vacancies_2026,
    ROUND(AVG(CASE WHEN Year = 2021 THEN Vacancies * 1.0 END) - AVG(CASE WHEN Year = 2026 THEN Vacancies * 1.0 END), 0) AS Drop_In_Vacancies
FROM ai_job_impact
GROUP BY Job_Role
HAVING AVG(CASE WHEN Year = 2021 THEN Vacancies * 1.0 END) > AVG(CASE WHEN Year = 2026 THEN Vacancies * 1.0 END)
ORDER BY Drop_In_Vacancies DESC;