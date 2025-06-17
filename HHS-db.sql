CREATE DATABASE HHS_db;
USE HHS_db;

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

INSERT INTO Patients VALUES
	(1001, 'Olivia', 'Chen', '1995-08-12', 'Female', '123 Tech Park Ave, Silicon Valley', 'A+', 'MediCare Plus', '2025-01-15', 'BIO1001'),
	(1002, 'Ethan', 'Robinson', '1988-03-25', 'Male', '456 Quantum Lane, Austin', 'O+', 'HealthGuard 2025', '2025-01-18', 'BIO1002'),
	(1003, 'Ava', 'Patel', '1976-11-30', 'Female', '789 Neural St, Boston', 'B-', 'Blue Cross AI', '2025-01-20', 'BIO1003'),
	(1004, 'Liam', 'Nguyen', '2005-05-18', 'Male', '321 GenZ Blvd, Seattle', 'AB+', 'YouthCare 2025', '2025-01-22', 'BIO1004'),
	(1005, 'Sophia', 'Kim', '1992-09-05', 'Female', '654 Nano Road, San Diego', 'A-', 'Wellness Future', '2025-01-25', 'BIO1005'),
	(1006, 'Noah', 'Martinez', '1980-12-14', 'Male', '987 Crypto Ave, Miami', 'O-', 'Global Health', '2025-01-28', 'BIO1006'),
	(1007, 'Isabella', 'Johnson', '2001-07-22', 'Female', '159 VR Street, Denver', 'B+', 'New Age Insurance', '2025-02-01', 'BIO1007'),
	(1008, 'Lucas', 'Wilson', '1972-04-08', 'Male', '753 AI Boulevard, Chicago', 'A+', 'SeniorCare Plus', '2025-02-05', 'BIO1008'),
	(1009, 'Mia', 'Brown', '1998-01-30', 'Female', '357 Metaverse Lane, Atlanta', 'O+', 'HealthGuard 2025', '2025-02-08', 'BIO1009'),
	(1010, 'Jackson', 'Davis', '1985-10-17', 'Male', '852 Robot Drive, Dallas', 'AB-', 'FutureWell', '2025-02-12', 'BIO1010'),
	(1011, 'Charlotte', 'Garcia', '1979-06-24', 'Female', '426 Cloud Street, Phoenix', 'A+', 'MediCare Plus', '2025-02-15', 'BIO1011'),
	(1012, 'Aiden', 'Rodriguez', '2003-02-11', 'Male', '963 Drone Avenue, Houston', 'B+', 'YouthCare 2025', '2025-02-18', 'BIO1012'),
	(1013, 'Amelia', 'Lee', '1991-12-03', 'Female', '741 IoT Way, Portland', 'O-', 'Wellness Future', '2025-02-20', 'BIO1013'),
	(1014, 'Caden', 'Walker', '1983-09-28', 'Male', '258 5G Road, Philadelphia', 'A-', 'Blue Cross AI', '2025-02-22', 'BIO1014'),
	(1015, 'Harper', 'Hall', '1974-05-15', 'Female', '369 Smart City, San Francisco', 'AB+', 'SeniorCare Plus', '2025-02-25', 'BIO1015'),
	(1016, 'Elijah', 'Young', '2000-08-09', 'Male', '147 Drone Lane, Las Vegas', 'B-', 'New Age Insurance', '2025-02-28', 'BIO1016'),
	(1017, 'Abigail', 'Allen', '1996-03-17', 'Female', '852 Quantum Street, Orlando', 'O+', 'HealthGuard 2025', '2025-03-02', 'BIO1017'),
	(1018, 'Grayson', 'King', '1987-11-22', 'Male', '963 Nano Avenue, Detroit', 'A+', 'FutureWell', '2025-03-05', 'BIO1018'),
	(1019, 'Emily', 'Wright', '1971-07-04', 'Female', '159 VR Road, Minneapolis', 'B+', 'MediCare Plus', '2025-03-08', 'BIO1019'),
	(1020, 'Benjamin', 'Scott', '1993-04-30', 'Male', '753 AI Lane, Cleveland', 'AB-', 'Blue Cross AI', '2025-03-12', 'BIO1020'),
	(1021, 'Elizabeth', 'Green', '2002-01-13', 'Female', '357 Metaverse Blvd, Tampa', 'O-', 'YouthCare 2025', '2025-03-15', 'BIO1021'),
	(1022, 'Mason', 'Adams', '1981-10-26', 'Male', '852 Robot Street, Pittsburgh', 'A+', 'Wellness Future', '2025-03-18', 'BIO1022'),
	(1023, 'Evelyn', 'Nelson', '1997-06-08', 'Female', '426 Cloud Avenue, Cincinnati', 'B-', 'New Age Insurance', '2025-03-20', 'BIO1023'),
	(1024, 'Logan', 'Baker', '1975-02-19', 'Male', '963 Drone Road, Kansas City', 'AB+', 'SeniorCare Plus', '2025-03-22', 'BIO1024'),
	(1025, 'Victoria', 'Carter', '1989-09-11', 'Female', '741 IoT Lane, Indianapolis', 'O+', 'HealthGuard 2025', '2025-03-25', 'BIO1025');

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

INSERT INTO Doctors VALUES
	(5001, 'Dr. Sophia', 'Zhang', 'Neuro-Robotics', '2022-05-10', 'Neurology', 'CA-MD-5001', TRUE, TRUE),
	(5002, 'Dr. Raj', 'Patel', 'Genomic Medicine', '2023-01-15', 'Genetics', 'CA-MD-5002', FALSE, TRUE),
	(5003, 'Dr. Marcus', 'Johnson', 'AI-Assisted Surgery', '2021-11-20', 'Surgery', 'CA-MD-5003', FALSE, TRUE),
	(5004, 'Dr. Elena', 'Rodriguez', 'Telemedicine', '2024-02-05', 'Internal Medicine', 'CA-MD-5004', TRUE, TRUE),
	(5005, 'Dr. David', 'Kim', 'Nanomedicine', '2020-08-12', 'Oncology', 'CA-MD-5005', FALSE, TRUE),
	(5006, 'Dr. Olivia', 'Chen', 'VR Therapy', '2023-06-18', 'Psychiatry', 'CA-MD-5006', TRUE, TRUE),
	(5007, 'Dr. James', 'Wilson', 'Bionic Implants', '2019-04-22', 'Orthopedics', 'CA-MD-5007', FALSE, TRUE),
	(5008, 'Dr. Priya', 'Natarajan', 'Precision Medicine', '2022-09-30', 'Cardiology', 'CA-MD-5008', FALSE, TRUE),
	(5009, 'Dr. Ethan', 'Williams', 'AI Diagnostics', '2024-01-05', 'Radiology', 'CA-MD-5009', TRUE, TRUE),
	(5010, 'Dr. Aisha', 'Khan', 'Cryonics', '2021-07-15', 'Emergency Medicine', 'CA-MD-5010', FALSE, TRUE),
	(5011, 'Dr. Noah', 'Martinez', '3D Bioprinting', '2023-03-10', 'Transplant', 'CA-MD-5011', FALSE, TRUE),
	(5012, 'Dr. Isabella', 'Brown', 'Neural Interfaces', '2022-10-25', 'Neurosurgery', 'CA-MD-5012', FALSE, TRUE),
	(5013, 'Dr. Lucas', 'Garcia', 'Quantum Imaging', '2024-04-18', 'Diagnostics', 'CA-MD-5013', TRUE, TRUE),
	(5014, 'Dr. Mia', 'Johnson', 'Exoskeleton Rehab', '2021-12-05', 'Physical Therapy', 'CA-MD-5014', FALSE, TRUE),
	(5015, 'Dr. Liam', 'Davis', 'Holographic Surgery', '2023-08-20', 'Surgical Robotics', 'CA-MD-5015', FALSE, TRUE);

SELECT * FROM Patients
WHERE registration_date BETWEEN '2025-01-01' AND '2025-01-31';

SELECT * FROM Doctors
WHERE specialization LIKE '%AI%';

SELECT * FROM Patients
WHERE blood_type IN ('O+','A+')
ORDER BY blood_type;

SELECT * FROM Doctors
WHERE is_remote=TRUE;

SELECT gender, COUNT(*) AS Total_Patients FROM Patients
WHERE gender = 'Female'
GROUP BY gender;

SELECT *, TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01') AS Age FROM Patients 
WHERE 
	TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01')>=30
AND TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01')<=50;

SELECT * FROM Doctors
WHERE
	hire_date< '2023-01-01'
AND ai_assistant_enabled=TRUE;

SELECT * FROM Patients
WHERE  insurance_provider LIKE '%CARE%';

SELECT * FROM Doctors
WHERE 
	department='Surgery'
AND is_remote=FALSE;

SELECT COUNT(*) AS Total_Patients, blood_type FROM Patients
WHERE 
	blood_type='Unknown'
GROUP BY blood_type;

SELECT blood_type,COUNT(*) AS Total_Patients FROM Patients
GROUP BY  blood_type
ORDER BY Total_Patients DESC
LIMIT 1;

SELECT insurance_provider,ROUND(AVG(TIMESTAMPDIFF(YEAR,date_of_birth,'2025-01-01')),2) AS Average_Age FROM Patients
GROUP BY insurance_provider;

SELECT *, TIMESTAMPDIFF(YEAR,hire_date,'2025-01-01') AS Total_Time FROM Doctors
WHERE TIMESTAMPDIFF(YEAR,hire_date,'2025-01-01')>3;

SELECT gender,COUNT(*) AS Total_Patients, COUNT(*)*100.0/(SELECT COUNT(*)FROM Patients) AS Percentage FROM Patients
GROUP BY gender;

SELECT 
	MONTH(registration_date) AS Month_number,
    MONTHNAME(registration_date) AS Month_name,
    COUNT(*) AS Total_Patients FROM Patients
WHERE registration_date > '2024-12-31'
GROUP BY Month_number, Month_name
ORDER BY Month_number;