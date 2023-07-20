SELECT *
FROM dbo.heart_2020


-- Search for blanks if any *no blanks are found
SELECT *
FROM dbo.heart_2020
WHERE AgeCategory IS NULL;


--amount of total female paticipants
SELECT COUNT(Sex) AS Female 
FROM dbo.heart_2020 
WHERE Sex = 'Female' 

--amount of total male paticipants
SELECT COUNT(Sex) AS Male
FROM dbo.heart_2020
WHERE Sex ='Male'


-- Select the Heartdisease positives and narrow down columns 
SELECT HeartDisease, Sex, AgeCategory, Smoking, Diabetic 
FROM dbo.heart_2020 
WHERE HeartDisease = 1 
ORDER BY AgeCategory 


-- Total Amount of ppl with Heartdisease 
SELECT Count(HeartDisease)As TotalHeartDisease 
FROM dbo.heart_2020 
WHERE HeartDisease =1 

-- Determine the group with higher risks of heart problems, arranged by older age
SELECT HeartDisease, Stroke, AgeCategory, Diabetic,
CASE
   WHEN HeartDisease = 1 AND Stroke = 1 THEN 'HighRisk'
   WHEN Diabetic = 'Yes' THEN 'ChronicDisease'
   ELSE 'Normal'
END
FROM dbo.heart_2020
Order BY AgeCategory DESC


