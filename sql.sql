SELECT COUNT(*), sex, deceased, creatinine_phosphokinase_level, 
CASE 
WHEN creatinine_phosphokinase_level <10 THEN "Below Normal Range"
WHEN creatinine_phosphokinase_level BETWEEN 10 AND 120 THEN "Normal Range"
WHEN creatinine_phosphokinase_level >120 THEN "Above Normal Range"
ELSE "NONE"
END AS "CPK Level Ranges"
FROM clinical_records
WHERE deceased = 1
GROUP BY 5, sex;


