select ROUND(avg(platelets)) AS avg_number_platelets, 
CASE
WHEN sex = 0 THEN "Female"
WHEN sex = 1 THEN "Male"
END AS "gender", 
deceased
FROM clinical_records
GROUP BY 2;

# avg_number_platelets	gender	deceased
# 279964	Female	1
# 254370	Male	1

SELECT ROUND(avg(platelets)) AS avg_number_platelets, 
CASE
WHEN sex = 0 THEN "Female"
WHEN sex = 1 THEN "Male"
END AS "gender"
FROM clinical_records
WHERE deceased = 1
GROUP BY 2;

# avg_number_platelets, gender
# 259513, Female
# 254664', Male


SELECT COUNT(*),
CASE
WHEN sex = 0 THEN "Female"
WHEN sex = 1 THEN "Male"
END AS "gender",
CASE 
WHEN platelets <150000 THEN "Below Normal Range"
WHEN platelets BETWEEN 150000 AND 400000 THEN "Normal Range"
WHEN platelets >400000 THEN "Above Normal Range"
ELSE "NONE"
END AS "Platelets Count Range"
FROM clinical_records
GROUP BY 3, sex;

# COUNT(*)	gender	Platelets Count Range
# 5	Female	Below Normal Range
# 10	Male	Above Normal Range
# 10	Female	Above Normal Range
#22	Male	Below Normal Range
# 90	Female	Normal Range
# 162	Male	Normal Range 

SELECT COUNT(*),
CASE
WHEN sex = 0 THEN "Female"
WHEN sex = 1 THEN "Male"
END AS "gender",
CASE 
WHEN platelets <150000 THEN "Below Normal Range"
WHEN platelets BETWEEN 150000 AND 400000 THEN "Normal Range"
WHEN platelets >400000 THEN "Above Normal Range"
ELSE "NONE"
END AS "Platelets Count Range"
FROM clinical_records
WHERE deceased = 1
GROUP BY 3, sex;

# COUNT(*)	gender	Platelets Count Range
# 2	Female	Above Normal Range
# 3	Female	Below Normal Range
# 4	Male	Above Normal Range
# 8	Male	Below Normal Range
# 29	Female	Normal Range
# 50	Male	Normal Range
