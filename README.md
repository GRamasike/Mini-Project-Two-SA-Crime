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

The objective was to answer 30 analytical business questions using SQL queries.<br>
## 📁 Database Setup <br>
CREATE DATABASE PoliceCase; <br>
USE criminalcases; <br>

Main table: criminal_data - 1 000 rows of criminal case records
## 📂 Repository Structure
The 30 queries are split across three files, organised by difficulty level to show progression in SQL complexity: <br>

- CriminalCases_Foundations.sql 🟢 Beginner Basic SELECT statements, simple filters, and introductory aggregations <br>

- CriminalCases_Exploration.sql 🟡 Intermediate Ranking, grouping, date filtering, and multi-condition queries <br>

- CriminalCases_Analysis.sql 🔴 Advanced Aggregations, distributions, financial analysis, and deeper insights


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
FROM criminalcases <br>
GROUP BY Province <br>
ORDER BY Number_of_Cases DESC; <br>

## 💰Total Estimated Fraud Amount per Province
SELECT <br>
SUM (EstimatedFraudAmount_ZAR) AS Total_Estimated_Fraud_Amount,<br>
Province <br>
FROM criminalcases <br>
GROUP BY Province; <br>

## ⚖️ Arrested vs Not Arrested Distrubution <br>
SELECT <br>
COUNT (RecordID) AS Number_of_Suspects,<br>
Arrested <br>
FROM criminalcases <br>
GROUP BY Arrested; <br>
## 🏆Most Common Crime Type <br>
SELECCT TOP 1 <br>
COUNT (RecordID) AS Number_of_Cases, <br>
CrimeType <br>
FROM criminalcases <br>
ORDER BY Number_of_Cases DESC;

## 📊Key Insight <br>
🗺️ Northern Cape recorded the highest number of criminal cases. <br>
💻 Cybercrime was the most common crime type. <br>
💸 High risk cases accounted for 3.3% of total fraud amount. <br>
⚖️ The conviction rate analysis shows 21.7% of cases resulted in conviction.

# 🛠️ Tools Used
- SQL Server - database creations and querying <br>
- SSMS (SQL Server Management Studio) - query development and testing <br>

# 👤 About Me
I'm an aspiring SQL Developer / Data Engineer building hands-on projects to develop real-world skills in database design, querying, and data pipelines. I enjoy working close to the data itself — structuring it, querying it, and making it reliable — and I'm actively working towards a career in SQL development or data engineering.<br>

This project is part of my growing portfolio.





