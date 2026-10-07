USE ai_job_market_db;

SELECT DISTINCT 
    Job_Role,
    Degree_Importance,
    Portfolio_Weightage_Percentage
FROM ai_job_impact
WHERE Portfolio_Weightage_Percentage > 75 AND Degree_Importance = 'Low'
ORDER BY Portfolio_Weightage_Percentage DESC;