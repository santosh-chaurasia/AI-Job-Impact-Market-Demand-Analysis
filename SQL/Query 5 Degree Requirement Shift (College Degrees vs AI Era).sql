USE ai_job_market_db;

 SELECT 
    Year,
    Degree_Importance,
    COUNT(*) AS Total_Job_Postings
FROM ai_job_impact
GROUP BY Year, Degree_Importance
ORDER BY Year, Total_Job_Postings DESC;