USE ai_job_market_db;

SELECT DISTINCT 
    Job_Role, 
    Top_Required_Skill, 
    Skill_Demand_Status
FROM ai_job_impact
WHERE Year >= 2023 AND Skill_Demand_Status IN ('High Growth', 'Growing')
ORDER BY Job_Role;