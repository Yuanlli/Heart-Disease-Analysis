# Heart Disease Analysis - SQL Data exploration


## Objective 

-Data exploration with SQL

-To find out the factors most likely lead to heart disease.  

-Heart health analytics to health hospitals find out the people who suffered from heart disease.  





```
--amount of total female paticipants
SELECT COUNT(Sex) AS Female 
FROM dbo.heart_2020 
WHERE Sex = 'Female'
```
