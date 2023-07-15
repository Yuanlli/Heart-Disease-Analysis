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

```sql
--amount of total male paticipants
SELECT COUNT(Sex) AS Male
FROM dbo.heart_2020
WHERE Sex ='Male'
```

```sql
-- Select the Heartdisease positives and narrow down columns 
SELECT HeartDisease, Sex, AgeCategory, Smoking, Diabetic 
FROM dbo.heart_2020 
WHERE HeartDisease = 1 
ORDER BY AgeCategory
```
