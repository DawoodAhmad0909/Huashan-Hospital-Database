# Huashan-Hospital-Database
## Overview
#### Database:HHS_db
This SQL script sets up and populates a hospital database named HHS_db. It defines two core tables—Patients and Doctors—each capturing essential attributes such as personal details, medical information, and organizational data. Once populated with sample data, the script performs a series of analytical queries aimed at retrieving insights about patient demographics, doctor specializations, registration trends, and more.

## Objectives
#### Design a structured healthcare database using MySQL with normalized tables for patients and doctors.
#### Insert realistic and diverse sample records to simulate a functioning hospital environment.
#### Identify patient trends (e.g., age, blood type, gender, insurance usage).
#### Analyze doctor data (e.g., specializations, employment trends, remote work status).
#### Support decision-making through data such as average patient age, monthly registrations, and most common blood types.
## Creating Database
```sql
CREATE DATABASE HHS_db;
USE HHS_db;
```
## Creating Tables
### Table:Patients
```sql
CREATE TABLE Patients(
        patient_id INT PRIMARY KEY,
        first_name VARCHAR(20),
    last_name VARCHAR(20),
    date_of_birth DATE,
    gender VARCHAR(10),
    address VARCHAR(100),
    blood_type VARCHAR(10),
    insurance_provider VARCHAR(25),
    registration_date DATE,
    biometric_id VARCHAR(20) UNIQUE
);

SELECT * FROM Patients;
```
### Table:Doctors
```sql
CREATE TABLE Doctors(
        doctor_id INT PRIMARY KEY,
    first_name VARCHAR(25),
    last_name VARCHAR(25),
    specialization VARCHAR(50),
    hire_date DATE,
    department VARCHAR(50),
    license_number VARCHAR(25) UNIQUE,
    is_remote BOOLEAN,
    ai_assistant_enabled BOOLEAN
);

SELECT * FROM Doctors;
```
#### 1. List all patients registered in January 2025.
```sql
SELECT * FROM Patients
WHERE registration_date BETWEEN '2025-01-01' AND '2025-01-31';
```
#### 2. Show all doctors specializing in AI-related fields (containing 'AI' in specialization).
```sql
SELECT * FROM Doctors
WHERE specialization LIKE '%AI%';
```
#### 3. Find patients with blood type 'O+' or 'A+'.
```sql
SELECT * FROM Patients
WHERE blood_type IN ('O+','A+')
ORDER BY blood_type;
```
#### 4. Display all remote-working doctors.
```sql
SELECT * FROM Doctors
WHERE is_remote=TRUE;
```
#### 5. Count how many female patients are registered in the system.
```sql
SELECT gender, COUNT(*) AS Total_Patients FROM Patients
WHERE gender = 'Female'
GROUP BY gender;
```
#### 6. Find patients between ages 30-50 as of 2025.
```sql
SELECT *, TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01') AS Age FROM Patients 
WHERE 
        TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01')>=30
AND TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01')<=50;
```
#### 7. List doctors hired before 2023 with AI assistants enabled.
```sql
SELECT * FROM Doctors
WHERE
        hire_date< '2023-01-01'
AND ai_assistant_enabled=TRUE;
```
#### 8. Show patients with insurance providers containing 'Care' in the name.
```sql
SELECT * FROM Patients
WHERE insurance_provider LIKE '%CARE%';
```
#### 9. Find all doctors in the Surgery department who are not working remotely.
```sql
SELECT * FROM Doctors
WHERE 
        department='Surgery'
AND is_remote=FALSE;
```
#### 10. Count how many patients have 'Unknown' blood type.
```sql
SELECT COUNT(*) AS Total_Patients, blood_type FROM Patients
WHERE 
        blood_type='Unknown'
GROUP BY blood_type;
```
#### 11. Find the most common blood type among patients.
```sql
SELECT blood_type,COUNT(*) AS Total_Patients FROM Patients
GROUP BY  blood_type
ORDER BY Total_Patients DESC
LIMIT 1;
```
#### 12. Calculate the average age of patients by insurance provider.
```sql
SELECT insurance_provider,ROUND(AVG(TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01')),2) AS Average_Age FROM Patients
GROUP BY insurance_provider;
```
#### 13. Show doctors who have been with the hospital for more than 3 years (as of 2025).
```sql
SELECT *, TIMESTAMPDIFF(YEAR,hire_date,'2025-01-01') AS Total_Time FROM Doctors
WHERE TIMESTAMPDIFF(YEAR,hire_date,'2025-01-01')>3;
```
#### 16. Calculate the percentage of patients by gender.
```sql
SELECT gender,COUNT(*) AS Total_Patients, COUNT(*)*100.0/(SELECT COUNT(*)FROM Patients) AS Percentage FROM Patients
GROUP BY gender;
```
#### 17. Show the growth in patient registrations by month in 2025.
```sql
SELECT 
        MONTH(registration_date) AS Month_number,
    MONTHNAME(registration_date) AS Month_name,
    COUNT(*) AS Total_Patients FROM Patients
WHERE registration_date > '2024-12-31'
GROUP BY Month_number,Month_name
ORDER BY Month_number;
```
## Conclusion
This SQL script successfully demonstrates the creation and basic use of a healthcare information system database. It effectively captures and queries data relevant to hospital operations, allowing for meaningful insights into both patient care and doctor workforce. The logical queries provide answers to real-world operational questions, such as identifying high-demand blood types, tracking registration trends, and understanding workforce distribution—laying the groundwork for more advanced analytics and reporting in a hospital environment.

