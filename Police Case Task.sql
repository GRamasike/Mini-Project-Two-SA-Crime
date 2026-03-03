CREATE DATABASE Police_Case;

USE Police_Case;

--South Africa Criminal Database - 30 SQL Questions

--1. Display all records from the CriminalCases table.
SELECT *
FROM criminal_data;

--2. Count the total number of cases in the table.
SELECT
COUNT(RecordID) AS Number_of_Cases
FROM criminal_data;

--3. Count the number of cases in each province.
SELECT
COUNT(RecordID) AS Number_of_Cases,
Province
FROM criminal_data
GROUP BY Province;

--4. Retrieve all cases where the crime type is Fraud.
SELECT *
FROM criminal_data
WHERE CrimeType = 'Fraud';

--5. Count the number of cases for each crime type.
SELECT
COUNT(RecordID) AS Number_of_Cases,
CrimeType
FROM criminal_data
GROUP BY CrimeType;

--6. Display all cases classified as High or Critical risk.
SELECT *
FROM criminal_data
WHERE RiskLevel IN ('High','Critical');

--7. Calculate the average Financial Score of all suspects.
SELECT
AVG(FinancialScore) AS Average_Financial_Score
FROM criminal_data;

--8. Find the highest Estimated Fraud Amount recorded.
SELECT
MAX(EstimatedFraudAmount_ZAR) AS Highest_Estimated_Fraud_Amount
FROM criminal_data;

SELECT TOP 1
EstimatedFraudAmount_ZAR
from criminal_data
ORDER BY EstimatedFraudAmount_ZAR DESC;

--9. Retrieve the top 10 cases with the highest Estimated Fraud Amount.
SELECT TOP 10 *
FROM criminal_data
ORDER BY EstimatedFraudAmount_ZAR DESC;

--10. Display all cases where the suspect was arrested.
SELECT *
FROM criminal_data
WHERE Arrested = 'Yes';

--11. Count how many suspects were arrested versus not arrested.
SELECT
COUNT(RecordID) AS Number_of_Suspects,
Arrested
FROM criminal_data
GROUP BY Arrested;

--12. Count the number of cases associated with each bank.
SELECT
COUNT(RecordID) AS Number_of_Cases,
BankInvolved
FROM criminal_data
GROUP BY BankInvolved;

--13. Calculate the total Estimated Fraud Amount per province.
SELECT
SUM(EstimatedFraudAmount_ZAR) AS Total_Estimated_Fraud_Amount,
Province
FROM criminal_data
GROUP BY Province;

--14. Retrieve all suspects older than 50 years.
SELECT *
FROM criminal_data
WHERE Age > 50;


--15. Calculate the average age of suspects per province.
SELECT
AVG(Age) AS Average_Age,
Province
FROM criminal_data
GROUP BY Province;

--16. Display all cases recorded from 2020 onwards.
SELECT *
FROM criminal_data
WHERE YEAR (CrimeDate) >= 2020;

--17. Count how many cases resulted in a Convicted status.
SELECT 
COUNT (RecordID) AS Number_of_Cases,
CaseStatus
FROM criminal_data
WHERE CaseStatus = 'Convicted'
GROUP BY CaseStatus;

--18. Retrieve all suspects with more than three previous offenses.
SELECT *
FROM criminal_data
WHERE PreviousOffenses > 3;

--19. Show the distribution of cases by Risk Level.
SELECT
COUNT (RecordID) AS Number_of_Cases,
RiskLevel
FROM criminal_data
GROUP BY RiskLevel;

--20. Calculate the total Estimated Fraud Amount across all cases.
SELECT
SUM(CAST(EstimatedFraudAmount_ZAR AS Money)) AS Total_Estimated_Fraud_Amount
FROM criminal_data;

--21. Identify the province with the highest number of cases.
SELECT TOP 1
COUNT(RecordID) AS Number_of_Cases,
Province
FROM criminal_data
GROUP BY Province
ORDER BY Number_of_Cases DESC;

--22. Retrieve the youngest suspect in the dataset.
SELECT TOP 1 *
FROM criminal_data
WHERE Age = (SELECT MIN (Age) AS Youngest_Suspect FROM criminal_data);

--23. Retrieve the oldest suspect in the dataset.

SELECT TOP 1 *
FROM criminal_data
WHERE Age = (SELECT MAX(Age) AS Olderst_Suspect FROM criminal_data);

--24. Count the number of cases handled by each investigating officer.
SELECT
Count (RecordID) AS Number_of_Cases,
InvestigatingOfficer
FROM criminal_data
GROUP BY InvestigatingOfficer;

--25. Calculate the average Estimated Fraud Amount per crime type.
SELECT
AVG(CAST(EstimatedFraudAmount_ZAR AS Money)) AS Average_Estimated_Fraud_Amount,
CrimeType
FROM criminal_data
GROUP BY CrimeType;

--26. Display all cases occurring in Gauteng province.
SELECT *
FROM criminal_data
WHERE Province = 'Gauteng';

--27. Retrieve all Fraud cases classified as High risk.
SELECT *
FROM criminal_data
WHERE CrimeType = 'Fraud' AND
RiskLevel = 'High';

--28. Count the number of cases per year based on CrimeDate.
SELECT
COUNT (RecordID) AS Number_of_Cases,
Year (CrimeDate) AS Year_of_Crime
FROM criminal_data
GROUP BY Year (CrimeDate);

--29. Display all suspects with a Financial Score below 500.
SELECT *
FROM criminal_data
WHERE FinancialScore < 500;

--30. Identify the most common Crime Type in the dataset.
SELECT TOP 1
COUNT (RecordID) AS Number_of_Cases,
CrimeType
FROM criminal_data
GROUP BY CrimeType
ORDER BY Number_of_Cases DESC;
