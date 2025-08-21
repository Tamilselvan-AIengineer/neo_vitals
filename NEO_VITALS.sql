-- 7. TREATMENT Table
CREATE TABLE Treatment (
    Treatment_ID INT AUTO_INCREMENT PRIMARY KEY,
    Patient_ID INT,
    Treatment_Type VARCHAR(100),
    Duration VARCHAR(50),
    Medicine_Name VARCHAR(200),
    FOREIGN KEY (Patient_ID) REFERENCES Patient(Patient_ID) ON DELETE CASCADE
);diagnosispatientmedical_history