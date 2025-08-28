-- 1. Patient Table
INSERT INTO Patient (P_name, P_DOB, P_Gender, P_address, P_contact)
VALUES
('Arun Kumar', '1990-05-12', 'Male', 'Chennai, Tamil Nadu', '9876543210'),
('Priya Sharma', '1985-11-23', 'Female', 'Bangalore, Karnataka', '9123456780'),
('Ravi Patel', '2000-01-10', 'Male', 'Hyderabad, Telangana', '9001122334');
diagnosis-- 2. Medical_History Table
INSERT INTO Medical_History (Patient_ID, Past_Diseases, Allergies, Surgeries)
VALUES
(1, 'Hypertension', 'Penicillin', 'Appendectomy'),
(2, 'Diabetes', 'Peanuts', 'None'),
(3, 'Asthma', 'Dust', 'Tonsillectomy');
-- 3. Diagnosis Table
INSERT INTO Diagnosis (Patient_ID, Disease_Name, Severity, Diagnosis_Date)
VALUES
(1, 'Hypertension', 'Moderate', '2024-07-20'),
(2, 'Diabetes Mellitus', 'Severe', '2024-08-15'),
(3, 'Asthma', 'Mild', '2024-06-10');
-- 4. Simulation_Result Table
INSERT INTO Simulation_Result (Patient_ID, Predicted_Risk, Suggested_Treat)
VALUES
(1, 'High Risk of Stroke', 'Lifestyle changes, Blood pressure medication'),
(2, 'Risk of Kidney Failure', 'Insulin therapy, Diet monitoring'),
(3, 'Low Risk of Complications', 'Inhaler usage, Avoid allergens');
-- 5. Medical_Test Table
INSERT INTO Medical_Test (Patient_ID, Test_Name, Test_Result, Test_Date)
VALUES
(1, 'Blood Pressure Test', '140/90 mmHg', '2024-07-19'),
(2, 'Blood Sugar Test', 'HbA1c: 9%', '2024-08-10'),
(3, 'Pulmonary Function Test', 'FEV1: 80%', '2024-06-05');
-- 6. Doctor Table
INSERT INTO Doctor (Name, Specialization, Contact)
VALUES
('Dr. Meena Ramesh', 'Cardiologist', '9887654321'),
('Dr. Karthik Rao', 'Endocrinologist', '9112233445'),
('Dr. Anjali Verma', 'Pulmonologist', '9778899001');
-- Treatment Table
INSERT INTO Treatment (Patient_ID, Treatment_Type, Duration, Medicine_Name)
VALUES
(1, 'Medication', '6 months', 'Amlodipine'),
(2, 'Insulin Therapy', '1 year', 'Insulin Glargine'),
(3, 'Inhalation Therapy', '3 months', 'Salbutamol');