SELECT COUNT(creatinine_phosphokinase_level), sex
FROM clinical_records
WHERE deceased = 1
GROUP BY 2;

# COUNT(creatinine_phosphokinase_level)	sex
# 62	1
# 34	0



SELECT COUNT(*), creatinine_phosphokinase_level,
CASE
WHEN sex = 0 THEN "Female"
WHEN sex = 1 THEN "Male"
END AS "gender",
CASE
WHEN sex = 1 AND creatinine_phosphokinase_level <39 THEN "Below Normal Range"
WHEN sex = 1 AND creatinine_phosphokinase_level BETWEEN 39 AND 308 THEN "Normal Men Range"
WHEN sex = 1 AND creatinine_phosphokinase_level >308 THEN "Above Normal Range"
WHEN sex = 0 AND creatinine_phosphokinase_level <26 THEN "Below Normal Range"
WHEN sex = 0 AND creatinine_phosphokinase_level BETWEEN 26 AND 192 THEN "Normal Female Range"
WHEN sex = 0 AND creatinine_phosphokinase_level >192 THEN "Above Normal Range"
ELSE "n/a"
END AS 'CPK Level Ranges'
FROM clinical_records
WHERE deceased = 1
GROUP BY 4, 3;

# COUNT(*)	creatinine_phosphokinase_level	gender	CPK Level Ranges
# 33	582	Male	Above Normal Range
# 19	582	Female	Above Normal Range
# 1	23	Male	Below Normal Range
# 15	160	Female	Normal Female Range
# 28	146	Male	Normal Men Range
