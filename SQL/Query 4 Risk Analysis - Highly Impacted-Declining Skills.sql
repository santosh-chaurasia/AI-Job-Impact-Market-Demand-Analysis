USE ai_job_market_db;

SELECT DISTINCT 
    Job_Role, 
    Top_Required_Skill, 
    Skill_Demand_Status
FROM ai_job_impact
WHERE Skill_Demand_Status = 'Declining'
ORDER BY Job_Role;