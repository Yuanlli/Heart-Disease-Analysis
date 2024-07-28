# Heart Disease Analysis - SQL Data exploration

Utlised Microsoft SQL Server.

## Objective 

-Data exploration with SQL

-To find out the factors most likely lead to heart disease.  

-Heart health analytics to help health hospitals find out high risk groups.  



### Data Cleaning 

#### 1) Search for blanks if any

```sql
SELECT *
FROM dbo.heart_2020
WHERE AgeCategory IS NULL;
```
No blanks are found


#### 2) Determine total number of female paticipants

```sql
SELECT COUNT(Sex) AS Female 
FROM dbo.heart_2020 
WHERE Sex = 'Female'
```

Total amount of female participants of the survey is 167805.

![Capture1](https://github.com/Yuanlli/Heart-Disease-Analysis/assets/35889216/298dab97-2ed3-4cd6-a935-63c5df4e9a3b)



#### 3) Determine total number of female paticipants

```sql
SELECT COUNT(Sex) AS Male
FROM dbo.heart_2020
WHERE Sex ='Male'
```
Total amount of male participants of the survey is 151990.

![Capture2](https://github.com/Yuanlli/Heart-Disease-Analysis/assets/35889216/c6fc43b2-1dc1-440e-bc3c-06b8189fb3e6)


#### 4) Select the HeartDisease positives and narrow down columns 

```sql
SELECT HeartDisease, Sex, AgeCategory, Smoking, Diabetic 
FROM dbo.heart_2020 
WHERE HeartDisease = 1 
ORDER BY AgeCategory
```
Total number of all participants who has a postive in heart disease is 27373.

![Capture SQL for dbo heart 2020](https://github.com/Yuanlli/Heart-Disease-Analysis/assets/35889216/f99c038a-42bc-43b0-90b8-f0df32451866)



#### 5) Determine the group with higher risks of heart problems, arranged by older age

```sql
SELECT HeartDisease, Stroke, AgeCategory, Diabetic,
CASE
   WHEN HeartDisease = 1 AND Stroke = 1 THEN 'HighRisk'
   WHEN Diabetic = 'Yes' THEN 'ChronicDisease'
   ELSE 'Normal'
END AS DiseaseLevel
FROM dbo.heart_2020
Order BY AgeCategory DESC
```
Using CASE, ELSE, ORDER BY statements to filter out and determine the indviduals with the disease risk level. 
Individuals with positive heart disease and stroke are the most high risk indivuduals.

![Capture SQL for dbo heart 2020 2](https://github.com/Yuanlli/Heart-Disease-Analysis/assets/35889216/8b4f6693-bcdb-4f86-9ce1-24e5ffc63b05)



#### 6) Determine the highest risk group with heart disease and stroke.

```sql

SELECT HeartDisease, Stroke, AgeCategory, Diabetic,
CASE
   WHEN HeartDisease = 1 AND Stroke = 1 THEN 'HighRisk'
   WHEN Diabetic = 'Yes' THEN 'ChronicDisease'
   ELSE 'Normal'
END
FROM dbo.heart_2020
Order BY AgeCategory DESC
```
![Capture3](https://github.com/Yuanlli/Heart-Disease-Analysis/assets/35889216/be72485c-57ab-4600-8006-290b279590c0)



```sql
SELECT HeartDisease,AgeCategory,
CASE
   WHEN HeartDisease = '1' THEN 'HighRisk'
   
END
FROM dbo.heart_2020
```








