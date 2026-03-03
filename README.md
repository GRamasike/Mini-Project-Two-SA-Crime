# Mini-Project-Two-SA-Crime <br>
## 📌Project Overview <br>
This project involves building and querying a South African Criminal Case database using SQL Server. <br>
The database stores criminal case records including:<br>
- Suspect details <br>
- Crime Type <br>
- Risk level <br>
- Estimated fraud amount (ZAR) <br>
- Province <br>
- Arrest status <br>
- Case status <br>
- Investigating officer <br>

The objective was to answer 30 analytical business qyestions using SQL queries.<br>
## 📁 Database Setup <br>
CREATE DATABASE Policee_Case; <br>
USE Police_Case; <br>
Main table used:

- criminal_data <br>
## 🔍 Key SQL Skills Demonstrated <br>
- SELECT statements
- WHERE filtering
- GROUP BY
- Aggregate functions (COUNT,SUM,AVG,MAX,MIN)
- Subqueries
- ORDER BY and TOP
- Data type casting
- Date functions <br>
  
## 📈 Insights <br>
## 🥇 Province with the Highest Number of Cases
SELECT TOP 1 <br>
COUNT (RecordID) AS Number_of_Cases,<br>
Province <br>
FROM criminal_data <br>
GROUP BY Province <br>
ORDER BY Number_of_Cases DESC; <br>

## 💰Total Estimated Fraud Amount per Province
SELECT <br>
SUM (EstimatedFraudAmount_ZAR) AS Total_Estimated_Fraud_Amount,<br>
Province <br>
FROM criminal_data <br>
GROUP BY Province <br>

## ⚖️ Arrested vs Not Arrested Distrubution <br>
SELECT <br>
COUNT (RecordID) AS Number_of_Suspects,<br>
Arrested <br>
FROM criminal_data <br>
GROUP BY Arrested <br>
## 🏆Most Common Crime Type <br>
SELECCT TOP 1 <br>
COUNT (RecordID) AS Number_of_Cases, <br>
CrimeType <br>
FROM criminal_data <br>
ORDER BY Number_of_Cases DESC;

## 📊Key Insight <br>
- Northern Cape recorded the highest number of criminal cases. <br>
- Cybercrime was the most common crime type. <br>
- High risk cases accounted for 3.3% of total fraud amount. <br>
- The conviction rate analysis shows 21.7% of cases resulted in conviction.





