# Heart Disease Analysis - SQL Data exploration


## Objective 

-Data exploration with SQL

-To find out the factors most likely lead to heart disease.  

-Heart health analytics to health hospitals find out the people who suffered from heart disease.  


### Data Cleaning 

```sql
-- Search for blanks if any
SELECT *
FROM dbo.heart_2020
WHERE AgeCategory IS NULL;
```
No blanks are found




```sql
--amount of total female paticipants
SELECT COUNT(Sex) AS Female 
FROM dbo.heart_2020 
WHERE Sex = 'Female'
```

Total amount of female participants of the survey is 167805

![Capture1](https://github.com/Yuanlli/Heart-Disease-Analysis/assets/35889216/298dab97-2ed3-4cd6-a935-63c5df4e9a3b)



```sql
--amount of total male paticipants
SELECT COUNT(Sex) AS Male
FROM dbo.heart_2020
WHERE Sex ='Male'
```
Total amount of male participants of the survey is 151990.

![Capture2](https://github.com/Yuanlli/Heart-Disease-Analysis/assets/35889216/c6fc43b2-1dc1-440e-bc3c-06b8189fb3e6)


```sql
-- Select the Heartdisease positives and narrow down columns 
SELECT HeartDisease, Sex, AgeCategory, Smoking, Diabetic 
FROM dbo.heart_2020 
WHERE HeartDisease = 1 
ORDER BY AgeCategory
```



```sql
-- Determine the group with higher risks of heart problems, arranged by older age
SELECT HeartDisease, Stroke, AgeCategory, Diabetic,
CASE
   WHEN HeartDisease = 1 AND Stroke = 1 THEN 'HighRisk'
   WHEN Diabetic = 'Yes' THEN 'ChronicDisease'
   ELSE 'Normal'
END
FROM dbo.heart_2020
Order BY AgeCategory DESC
```
