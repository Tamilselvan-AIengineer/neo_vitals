CREATE DATABASE IF NOT EXISTS digital_medical_twin;
USE digital_medical_twin;

-- 1. PATIENT Table
CREATE TABLE Patient (
    Patient_ID INT AUTO_INCREMENT PRIMARY KEY,
    P_name VARCHAR(100) NOT NULL,
    P_DOB DATE NOT NULL,
    P_Gender VARCHAR(10),
    P_address VARCHAR(200),
    P_contact VARCHAR(15) UNIQUE
);

-- 2. MEDICAL_HISTORY Table
CREATE TABLE Medical_History (
    History_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID INT,
    Past_Diseases TEXT,
    Allergies TEXT,
    Surgeries TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID) ON DELETE CASCADE
);

-- 3. DIAGNOSIS Table
CREATE TABLE Diagnosis (
    Diagnosis_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID INT,
    Disease_Name VARCHAR(100),
    Severity VARCHAR(50),
    Diagnosis_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID) ON DELETE CASCADE
);

-- 4. SIMULATION_RESULT Table
CREATE TABLE Simulation_Result (
    Simulation_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID INT,
    Predicted_Risk VARCHAR(100),
    Suggested_Treat TEXT,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID) ON DELETE CASCADE
);

-- 5. MEDICAL_TEST Table
CREATE TABLE Medical_Test (
    Test_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID INT,
    Test_Name VARCHAR(100),
    Test_Result TEXT,
    Test_Date DATE,
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID) ON DELETE CASCADE
);

-- 6. DOCTOR Table
CREATE TABLE Doctor (
    Doctor_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Specialization VARCHAR(100),
    Contact VARCHAR(15) UNIQUE
);

-- 7. TREATMENT Table
CREATE TABLE Treatment (
    Treatment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID INT,
    Treatment_Type VARCHAR(100),
    Duration VARCHAR(50),
    Medicine_Name VARCHAR(200),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID) ON DELETE CASCADE
);
