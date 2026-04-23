-- Create a database named Hospital_mgmt_sys
CREATE DATABASE Hospital_mgmt_sys;

-- Use the Hospital_mgmt_sys database
USE Hospital_mgmt_sys;

-- Clear the tables if they already exist
TRUNCATE TABLE patients;
TRUNCATE TABLE doctors;
TRUNCATE TABLE appointments;
-- Create a table named patients
CREATE TABLE IF NOT EXISTS patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    dob DATE NOT NULL,
    gender VARCHAR(10) NOT NULL,
    phone_number VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    registration_date DATE DEFAULT (CURRENT_DATE) NOT NULL
);

-- Insert sample data into the patients table
INSERT INTO Patients (name, dob, gender, phone_number, email, address, registration_date) VALUES
('Aarav Mehta',       '1990-03-15', 'Male',   '9876543210', 'aarav.mehta@gmail.com',    '12 MG Road, Ahmedabad',           '2024-01-10'),
('Priya Sharma',      '1985-07-22', 'Female', '9823456789', 'priya.sharma@yahoo.com',   '45 Satellite Road, Ahmedabad',    '2024-01-15'),
('Rohan Patel',       '1978-11-05', 'Male',   '9812345678', 'rohan.patel@gmail.com',    '8 Navrangpura, Ahmedabad',        '2024-02-01'),
('Sneha Joshi',       '1995-04-18', 'Female', '9801234567', 'sneha.joshi@hotmail.com',  '23 Vastrapur, Ahmedabad',         '2024-02-14'),
('Kiran Desai',       '1982-09-30', 'Male',   '9890123456', 'kiran.desai@gmail.com',    '67 Bopal, Ahmedabad',             '2024-02-20'),
('Anita Rao',         '1970-12-10', 'Female', '9778901234', 'anita.rao@yahoo.com',      '34 Maninagar, Ahmedabad',         '2024-03-05'),
('Vikram Singh',      '1988-06-25', 'Male',   '9867890123', 'vikram.singh@gmail.com',   '9 Paldi, Ahmedabad',              '2024-03-12'),
('Meera Nair',        '1993-01-08', 'Female', '9756789012', 'meera.nair@gmail.com',     '15 Thaltej, Ahmedabad',           '2024-03-18'),
('Suresh Kumar',      '1975-08-14', 'Male',   '9645678901', 'suresh.kumar@gmail.com',   '56 Chandkheda, Ahmedabad',        '2024-03-22'),
('Deepa Iyer',        '1998-02-27', 'Female', '9534567890', 'deepa.iyer@gmail.com',     '78 Gota, Ahmedabad',              '2024-04-01'),
('Arjun Tiwari',      '1965-05-19', 'Male',   '9423456789', 'arjun.tiwari@yahoo.com',   '31 Memnagar, Ahmedabad',          '2024-04-10'),
('Kavya Reddy',       '1992-10-03', 'Female', '9312345678', 'kavya.reddy@gmail.com',    '19 Ambawadi, Ahmedabad',          '2024-04-15'),
('Manish Gupta',      '1980-07-16', 'Male',   '9201234567', 'manish.gupta@gmail.com',   '88 Naranpura, Ahmedabad',         '2024-04-20'),
('Pooja Mishra',      '1997-03-09', 'Female', '9190123456', 'pooja.mishra@hotmail.com', '27 Ellis Bridge, Ahmedabad',      '2024-05-03'),
('Rahul Verma',       '1983-11-23', 'Male',   '9089012345', 'rahul.verma@gmail.com',    '11 Asarwa, Ahmedabad',            '2024-05-09'),
('Sunita Kapoor',     '1969-06-07', 'Female', '8978901234', 'sunita.kapoor@yahoo.com',  '42 Bapunagar, Ahmedabad',         '2024-05-14'),
('Amit Bhatt',        '1987-09-12', 'Male',   '8867890123', 'amit.bhatt@gmail.com',     '63 Odhav, Ahmedabad',             '2024-05-20'),
('Nisha Pandey',      '1994-01-28', 'Female', '8756789012', 'nisha.pandey@gmail.com',   '5 Nikol, Ahmedabad',              '2024-06-01'),
('Rajesh Soni',       '1971-04-02', 'Male',   '8645678901', 'rajesh.soni@yahoo.com',    '37 Sarkhej, Ahmedabad',           '2024-06-10'),
('Geeta Trivedi',     '1960-08-20', 'Female', '8534567890', 'geeta.trivedi@gmail.com',  '74 Isanpur, Ahmedabad',           '2024-06-15'),
('Harish Jain',       '1976-12-05', 'Male',   '8423456789', 'harish.jain@gmail.com',    '16 Vastral, Ahmedabad',           '2024-07-01'),
('Swati Shah',        '1991-05-17', 'Female', '8312345678', 'swati.shah@hotmail.com',   '50 Naroda, Ahmedabad',            '2024-07-08'),
('Nitin Yadav',       '1986-10-24', 'Male',   '8201234567', 'nitin.yadav@gmail.com',    '29 Vatva, Ahmedabad',             '2024-07-15'),
('Rekha Pillai',      '1973-02-13', 'Female', '8190123456', 'rekha.pillai@yahoo.com',   '82 Ranip, Ahmedabad',             '2024-07-22'),
('Mohit Agarwal',     '1999-07-06', 'Male',   '8089012345', 'mohit.agarwal@gmail.com',  '3 Kudasan, Gandhinagar',          '2024-08-01'),
('Divya Chawla',      '1984-11-29', 'Female', '7978901234', 'divya.chawla@gmail.com',   '68 Sector 21, Gandhinagar',       '2024-08-05'),
('Sanjay Malhotra',   '1967-04-11', 'Male',   '7867890123', 'sanjay.malhotra@yahoo.com','41 Sector 7, Gandhinagar',        '2024-08-10'),
('Lakshmi Venkat',    '1996-08-03', 'Female', '7756789012', 'lakshmi.venkat@gmail.com', '22 Sector 14, Gandhinagar',       '2024-08-18'),
('Prasad Kulkarni',   '1979-03-21', 'Male',   '7545678901', 'prasad.kulkarni@gmail.com','55 Sector 28, Gandhinagar',       '2024-08-25'),
('Tina Fernandes',    '2001-06-14', 'Female', '7645678901', 'tina.fernandes@gmail.com', '7 Sector 1, Gandhinagar',         '2024-09-01');
SELECT * FROM patients;

-- Create a table named doctors
CREATE TABLE IF NOT EXISTS Doctors (
    doctor_id INT PRIMARY KEY,
    name VARCHAR(100),
    specialization VARCHAR(100),
    phone_number VARCHAR(20),
    email VARCHAR(100),
    available_days VARCHAR(100),
    consultation_fee DECIMAL(10, 2),
    years_of_experience INT
);

-- Insert sample data into the doctors table
INSERT INTO Doctors (doctor_id, name, specialization, phone_number, email, available_days, consultation_fee, years_of_experience) VALUES
(1,  'Dr. Rajiv Kapoor',   'Cardiology',       '9911223344', 'rajiv.kapoor@hospital.com',  'Mon,Wed,Fri',         1500.00, 20),
(2,  'Dr. Sunita Mehta',   'Neurology',        '9922334455', 'sunita.mehta@hospital.com',  'Tue,Thu,Sat',         1800.00, 18),
(3,  'Dr. Alok Sharma',    'Dermatology',      '9933445566', 'alok.sharma@hospital.com',   'Mon,Tue,Wed',         1200.00,  8),
(4,  'Dr. Priti Desai',    'Orthopedics',      '9944556677', 'priti.desai@hospital.com',   'Wed,Thu,Fri',         1600.00, 16),
(5,  'Dr. Vivek Rao',      'Pediatrics',       '9955667788', 'vivek.rao@hospital.com',     'Mon,Tue,Thu',          900.00,  5),
(6,  'Dr. Meena Joshi',    'Oncology',         '9966778899', 'meena.joshi@hospital.com',   'Tue,Wed,Fri',         2000.00, 22),
(7,  'Dr. Suresh Pillai',  'Gastroenterology', '9977889900', 'suresh.pillai@hospital.com', 'Mon,Thu,Sat',         1400.00, 12),
(8,  'Dr. Ananya Singh',   'General Medicine', '9988990011', 'ananya.singh@hospital.com',  'Mon,Tue,Wed,Thu,Fri',  800.00,  6),
(9,  'Dr. Karan Malhotra', 'Cardiology',       '9900112233', 'karan.malhotra@hospital.com','Tue,Thu,Sat',         1700.00, 25),
(10, 'Dr. Poonam Trivedi', 'Neurology',        '9811223344', 'poonam.trivedi@hospital.com','Mon,Wed,Fri',         1600.00, 14),
(11, 'Dr. Harish Nair',    'Dermatology',      '9722334455', 'harish.nair@hospital.com',   'Mon,Tue,Thu',         1100.00,  3),
(12, 'Dr. Lakshmi Gupta',  'Orthopedics',      '9633445566', 'lakshmi.gupta@hospital.com', 'Wed,Fri,Sat',         1500.00, 10),
(13, 'Dr. Arun Kumar',     'Pediatrics',       '9544556677', 'arun.kumar@hospital.com',    'Tue,Thu,Sat',          950.00,  7),
(14, 'Dr. Ritu Verma',     'General Medicine', '9455667788', 'ritu.verma@hospital.com',    'Mon,Tue,Wed,Thu',      750.00,  2),
(15, 'Dr.  Sameer Bhatt',  'Oncology',         '9366778899', 'sameer.bhatt@hospital.com',  'Mon,Wed,Thu',         1900.00, 19);
SELECT * FROM Doctors;

-- Create table appointments
CREATE TABLE IF NOT EXISTS Appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    appointment_date DATETIME,
    status VARCHAR(20)
);

-- Insert sample data into the appointments table
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, status) VALUES
(1,  1,  1,  '2024-01-15', 'Completed'),
(2,  2,  3,  '2024-01-18', 'Completed'),
(3,  3,  4,  '2024-02-05', 'Completed'),
(4,  4,  5,  '2024-02-16', 'Completed'),
(5,  5,  2,  '2024-02-22', 'Completed'),
(6,  6,  6,  '2024-03-08', 'Completed'),
(7,  7,  7,  '2024-03-14', 'Completed'),
(8,  8,  8,  '2024-03-20', 'Completed'),
(9,  9,  1,  '2024-03-25', 'Completed'),
(10, 10, 3,  '2024-04-03', 'Completed'),
(11, 11, 9,  '2024-04-12', 'Completed'),
(12, 12, 10, '2024-04-17', 'Completed'),
(13, 13, 11, '2024-04-22', 'Completed'),
(14, 14, 12, '2024-05-05', 'Completed'),
(15, 15, 13, '2024-05-11', 'Completed'),
(16, 16, 14, '2024-05-16', 'Completed'),
(17, 17, 15, '2024-05-22', 'Completed'),
(18, 18, 1,  '2024-06-03', 'Completed'),
(19, 19, 2,  '2024-06-12', 'Completed'),
(20, 20, 3,  '2024-06-17', 'Completed'),
(21, 21, 4,  '2024-07-03', 'Completed'),
(22, 22, 5,  '2024-07-10', 'Completed'),
(23, 23, 6,  '2024-07-17', 'Completed'),
(24, 24, 7,  '2024-07-24', 'Completed'),
(25, 25, 8,  '2024-08-02', 'Completed'),
(26, 26, 9,  '2024-08-07', 'Completed'),
(27, 27, 10, '2024-08-13', 'Completed'),
(28, 28, 11, '2024-08-20', 'Completed'),
(29, 29, 12, '2024-08-27', 'Completed'),
(30, 30, 13, '2024-09-03', 'Completed'),
(31, 1,  2,  '2024-09-10', 'Completed'),
(32, 2,  6,  '2024-09-15', 'Completed'),
(33, 3,  8,  '2024-09-20', 'Completed'),
(34, 4,  9,  '2024-09-25', 'Completed'),
(35, 5,  10, '2024-10-02', 'Completed'),
(36, 6,  11, '2024-10-08', 'Completed'),
(37, 7,  12, '2024-10-14', 'Completed'),
(38, 8,  13, '2024-10-20', 'Completed'),
(39, 9,  14, '2024-10-26', 'Cancelled'),
(40, 10, 15, '2024-11-01', 'Completed'),
(41, 11, 1,  '2024-11-07', 'Completed'),
(42, 12, 3,  '2024-11-13', 'Cancelled'),
(43, 13, 5,  '2024-11-19', 'Completed'),
(44, 14, 7,  '2024-11-25', 'Completed'),
(45, 15, 9,  '2024-12-01', 'Completed'),
(46, 16, 2,  '2024-12-07', 'Completed'),
(47, 17, 4,  '2024-12-13', 'Completed'),
(48, 18, 6,  '2024-12-19', 'Cancelled'),
(49, 19, 8,  '2024-12-26', 'Completed'),
(50, 20, 10, '2025-01-05', 'Scheduled'),
(51, 21, 11, '2025-01-10', 'Scheduled'),
(52, 22, 12, '2025-01-15', 'Scheduled'),
(53, 23, 13, '2025-01-20', 'Scheduled'),
(54, 24, 14, '2025-01-25', 'Scheduled'),
(55, 25, 15, '2025-01-30', 'Scheduled'),
(56, 1,  7,  '2025-02-05', 'Scheduled'),
(57, 2,  9,  '2025-02-10', 'Scheduled'),
(58, 3,  1,  '2025-02-15', 'Scheduled'),
(59, 29, 3,  '2024-06-01', 'Cancelled'),
(60, 30, 3,  '2024-07-01', 'Cancelled');
SELECT * FROM Appointments;

-- Create table medical_records
CREATE TABLE Medical_Records (
    record_id INT PRIMARY KEY,
    patient_id INT,
    doctor_id INT,
    diagnosis TEXT,
    prescription TEXT,
    treatment_date DATE,
    admission_date DATE,  
    discharge_date DATE
);
INSERT INTO Medical_Records (record_id, patient_id, doctor_id, diagnosis, prescription, treatment_date, admission_date, discharge_date) VALUES
(5001, 1, 1, 'Hypertension', 'Amlodipine 5mg', '2024-01-15', NULL, NULL),
(5002, 1, 1, 'Routine Checkup', 'Vitamins', '2024-03-25', NULL, NULL),
(5003, 1, 2, 'Migraine', 'Sumatriptan', '2024-06-03', NULL, NULL),
(5004, 1, 2, 'Severe Migraine', 'Rest', '2024-09-10', '2024-09-08', '2024-09-10'),
(5005, 1, 1, 'Follow-up', 'Continue meds', '2024-11-07', NULL, NULL),
(5006, 1, 7, 'Gastric issue', 'Antacids', '2025-02-05', NULL, NULL),
(5007, 2, 3, 'Skin Rash', 'Topical Cream', '2024-01-18', NULL, NULL),
(5008, 2, 6, 'Mild Fever', 'Paracetamol', '2024-06-12', NULL, NULL),
(5009, 2, 6, 'Viral Infection', 'Antibiotics', '2024-09-15', '2024-09-12', '2024-09-15'),
(5010, 2, 2, 'Nerve Pain', 'Pregabalin', '2024-12-07', NULL, NULL),
(5011, 3, 4, 'Fractured Arm', 'Cast, Painkillers', '2024-02-05', '2024-02-05', '2024-02-07'),
(5012, 4, 5, 'Persistent Cough', 'Cough Syrup', '2024-02-16', NULL, NULL),
(5013, 5, 2, 'Cluster Headache', 'Rest', '2024-02-22', NULL, NULL),
(5014, 6, 6, 'Chemo session 1', 'Protocol A', '2024-03-08', '2024-03-07', '2024-03-09'),
(5015, 7, 7, 'Acid Reflux', 'Omeprazole', '2024-03-14', NULL, NULL),
(5016, 8, 8, 'Flu symptoms', 'Rest, Hydration', '2024-03-20', NULL, NULL),
(5017, 10, 3, 'Eczema', 'Moisturizer', '2024-04-03', NULL, NULL),
(5018, 11, 9, 'Palpitations', 'Beta Blockers', '2024-04-12', '2024-04-10', '2024-04-12');
SELECT * FROM Medical_Records;

-- Create table billing
CREATE TABLE Billing (
    invoice_id INT PRIMARY KEY,
    patient_id INT,
    appointment_id INT,
    amount DECIMAL(10, 2),
    payment_status VARCHAR(20) CHECK (payment_status IN ('Paid', 'Pending', 'Cancelled')),
    payment_date DATE
);
--  Insert sample data into the billing table
INSERT INTO Billing (invoice_id, patient_id, appointment_id, amount, payment_status, payment_date) VALUES
(9001, 1, 1, 1500.00, 'Paid', '2024-01-15'),
(9002, 2, 2, 1200.00, 'Paid', '2024-01-18'),
(9003, 3, 3, 1600.00, 'Paid', '2024-02-05'),
(9004, 4, 4, 900.00, 'Paid', '2024-02-16'),
(9005, 5, 5, 1800.00, 'Paid', '2024-02-22'),
(9006, 7, 7, 1400.00, 'Paid', '2024-03-14'),
(9007, 8, 8, 800.00, 'Paid', '2024-03-20'),
(9008, 10, 10, 1200.00, 'Paid', '2024-04-03'),
(9009, 11, 11, 1700.00, 'Paid', '2024-04-12'),
(9010, 6, 6, 2000.00, 'Pending', NULL),
(9011, 12, 12, 1600.00, 'Pending', NULL),
(9012, 13, 13, 1100.00, 'Pending', NULL),
(9013, 20, 50, 1600.00, 'Pending', NULL), 
(9014, 9, 39, 750.00, 'Cancelled', NULL),
(9015, 12, 42, 1200.00, 'Cancelled', NULL),
(9016, 18, 48, 2000.00, 'Cancelled', NULL);
SELECT * FROM Billing;

-- Create table departments
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);
-- Insert sample data into the departments table
INSERT INTO Departments (department_id, department_name) VALUES
(101, 'Cardiology'), 
(102, 'Neurology'), 
(103, 'Dermatology'),
(104, 'General Medicine'),
(105, 'Orthopedics'), 
(106, 'Pediatrics'),
(107, 'Oncology'), 
(108, 'Gastroenterology');
SELECT * FROM Departments;

-- Create table doctor_department
CREATE TABLE Doctor_Department (
    doctor_id INT,
    department_id INT,
    PRIMARY KEY (doctor_id, department_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert sample data into the doctor_department table
INSERT INTO Doctor_Department (doctor_id, department_id) VALUES
(1, 101), 
(2, 102), 
(3, 103), 
(4, 105), 
(5, 106), 
(6, 107), 
(7, 108), 
(8, 104), 
(9, 101), 
(10, 102), 
(11, 103), 
(12, 105), 
(13, 106), 
(14, 104), 
(15, 107);
SELECT * FROM Doctor_Department;

-- CRUD operations
-- Insert new patient, doctor, appointment
INSERT INTO Patients (name, dob, gender, phone_number, email, address) VALUES
('Ravi Kumar', '1985-05-20', 'Male', '9876543211', 'ravi.kumar@gmail.com', '123 New Street, Ahmedabad');
INSERT INTO Doctors (doctor_id, name, specialization, phone_number, email, available_days, consultation_fee, years_of_experience) VALUES
(16, 'Dr. Anjali Verma', 'Cardiology', '9876543212', 'anjali.verma@gmail.com', 'Monday, Wednesday, Friday', 2000.00, 10);
INSERT INTO Appointments (appointment_id, patient_id, doctor_id, appointment_date, status) VALUES
(61, 31, 16, '2024-10-01', 'Scheduled');

-- Update patient information
UPDATE patients SET address = '456 Updated Street, Ahmedabad' WHERE patient_id = 1;

-- Delete cancelled appointments older than 6 months
DELETE FROM appointments WHERE status = 'Cancelled' AND appointment_date < DATE_SUB(CURDATE(), INTERVAL 6 MONTH);

-- Q2
-- Find all patients registered in last year
SELECT * FROM patients WHERE registration_date = DATE_SUB(CURDATE(), INTERVAL 1 YEAR);

-- Get Top 5 highest paying patients
SELECT p.name, SUM(b.amount) AS total_spent
FROM patients p
JOIN billing b ON p.patient_id = b.patient_id
WHERE b.payment_status = "Paid"
GROUP BY p.patient_id
ORDER BY total_spent DESC
LIMIT 5;

-- Retrieve doctors who charge more than 1000
SELECT * FROM doctors WHERE consultation_fee > 1000;

-- Q3
-- Find appointments where status = scheduled and doctor_id = 3
SELECT * FROM appointments WHERE status = 'Scheduled' AND doctor_id = 3;

-- Retrieve doctors who specialize in Cardiology or neurology
SELECT * FROM doctors WHERE specialization IN ('Cardiology', 'Neurology');

-- Get patients who havent visited last year
SELECT * FROM patients WHERE patient_id NOT IN (SELECT DISTINCT patient_id FROM appointments WHERE appointment_date >= DATE_SUB(CURDATE(), INTERVAL 1 YEAR));

-- Q4
-- List all doctors soretd by specialization
SELECT * FROM doctors ORDER BY specialization;

-- Display the number of patients assigned to each doctor
SELECT doctor_id, COUNT(patient_id) AS patient_count FROM appointments GROUP BY doctor_id;

-- Show total revenue generated per department
SELECT 
    d.department_name,
    SUM(b.amount) AS total_revenue
FROM Departments d
JOIN Doctor_Department dd ON d.department_id = dd.department_id
JOIN Appointments a ON dd.doctor_id = a.doctor_id
JOIN Billing b ON a.appointment_id = b.appointment_id
WHERE b.payment_status = 'Paid'
GROUP BY d.department_id, d.department_name
ORDER BY total_revenue DESC;

-- Q5
-- Find the total revenue collected
SELECT SUM(amount) AS total_revenue FROM billing WHERE payment_status = "Paid";

-- Identify most visited doctor
SELECT doctor_id, COUNT(patient_id) AS visit_count FROM appointments GROUP BY doctor_id ORDER BY visit_count DESC LIMIT 1;

-- Calculate average consultation fee
SELECT ROUND(AVG(consultation_fee), 2) AS average_fee FROM doctors;

-- Q6
-- Ensure medical records are linked to correct patients and doctors
-- Link Medical Records to Patients
ALTER TABLE Medical_Records
ADD CONSTRAINT fk_med_patient 
FOREIGN KEY (patient_id) REFERENCES Patients(patient_id);

-- Link Medical Records to Doctors
ALTER TABLE Medical_Records
ADD CONSTRAINT fk_med_doctor 
FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id);

-- Establish relationship between invoice and appointments
ALTER TABLE Billing
ADD CONSTRAINT fk_bill_appointment
FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id);

-- Q7
-- Retriev list of doctors along with their department names using Inner Join
SELECT d.name AS doctor_name, dept.department_name
FROM Doctors d
JOIN Doctor_Department dd ON d.doctor_id = dd.doctor_id
JOIN Departments dept ON dd.department_id = dept.department_id;

-- Get all patients who have completed appointments using Left Join
SELECT p.name AS patient_name, a.status
FROM patients p
LEFT JOIN appointments a ON p.patient_id = a.patient_id
WHERE a.status = 'Completed';

-- Find appointments that have no payments using right join
SELECT a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date
FROM appointments a
RIGHT JOIN billing b ON a.appointment_id = b.appointment_id
WHERE b.invoice_id IS NULL;

-- Show patients who have never booked an appointment using full outer join
SELECT p.patient_id, p.name, a.appointment_id
FROM Patients p
LEFT JOIN Appointments a ON p.patient_id = a.patient_id
WHERE a.appointment_id IS NULL
UNION
SELECT p.patient_id, p.name, a.appointment_id
FROM Patients p
RIGHT JOIN Appointments a ON p.patient_id = a.patient_id
WHERE p.patient_id IS NULL;

-- Q8
-- Find doctors who have handled more than 50 patients
SELECT doctor_id, COUNT(DISTINCT patient_id) AS patient_count
FROM appointments
GROUP BY doctor_id
HAVING patient_count > 50;

-- Identify the patient who have spent most on treatments
SELECT p.patient_id, p.name, SUM(b.amount) AS total_spent
FROM Patients p
JOIN Billing b ON p.patient_id = b.patient_id
WHERE b.payment_status = 'Paid'
GROUP BY p.patient_id, p.name
HAVING SUM(b.amount) >= ALL (
    SELECT SUM(amount)
    FROM Billing
    WHERE payment_status = 'Paid'
    GROUP BY patient_id
);

-- Get appointments where doctor specializes in Dermatology
SELECT a.appointment_id, a.patient_id, a.doctor_id, a.appointment_date
FROM Appointments a
JOIN Doctors d ON a.doctor_id = d.doctor_id
WHERE d.specialization = 'Dermatology';

-- Q9
-- Extract month from appointment date
SELECT MONTHNAME(appointment_date) AS month_name, COUNT(appointment_id) AS total_visits
FROM Appointments
GROUP BY MONTH(appointment_date), MONTHNAME(appointment_date)
ORDER BY MONTH(appointment_date);

-- Calc total hospital stay
SELECT record_id, patient_id, admission_date, discharge_date, DATEDIFF(discharge_date, admission_date) AS stay_duration_days
FROM Medical_Records
WHERE admission_date IS NOT NULL 
  AND discharge_date IS NOT NULL;

-- Format treatment date
SELECT record_id, patient_id, treatment_date AS original_date, DATE_FORMAT(treatment_date, '%d-%m-%Y') AS formatted_treatment_date
FROM Medical_Records
WHERE treatment_date IS NOT NULL;

-- Q10
-- Convert all patient names to uppercase
SELECT patient_id, UPPER(name) AS uppercase_name FROM Patients;

-- Trim whitespace for doctor names
SELECT TRIM(name) AS trimmed_name FROM Doctors;

-- Replace missing phone numbers with not available
SELECT REPLACE(phone_number, '', 'Not Available') AS phone_number FROM Patients;

-- Q11
-- Rank doctors based on number of patients they have treated
SELECT d.doctor_id, d.name, RANK() OVER (ORDER BY COUNT(DISTINCT a.patient_id) DESC) AS doctor_rank
FROM Doctors d
JOIN Appointments a ON d.doctor_id = a.doctor_id
GROUP BY d.doctor_id, d.name
ORDER BY doctor_rank;

-- Cumulative amount
SELECT 
    MONTHNAME(payment_date) AS payment_month, 
    SUM(amount) AS monthly_revenue,
    SUM(SUM(amount)) OVER (ORDER BY MONTH(payment_date)) AS cumulative_revenue
FROM Billing
WHERE payment_status = 'Paid' AND payment_date IS NOT NULL
GROUP BY MONTH(payment_date), MONTHNAME(payment_date);

-- Running total
SELECT SUM(amount) OVER(ORDER BY patient_id) AS cumulative_amount FROM billing WHERE payment_status = "Paid";

-- Q12
-- Patient_risk_level
SELECT 
    p.patient_id, 
    p.name, 
    COUNT(m.record_id) AS total_records,
    CASE 
        WHEN COUNT(m.record_id) > 5 THEN 'High'
        WHEN COUNT(m.record_id) BETWEEN 3 AND 5 THEN 'Medium'
        ELSE 'Low'
    END AS Patient_Risk_Level
FROM Patients p
LEFT JOIN Medical_Records m ON p.patient_id = m.patient_id
GROUP BY p.patient_id, p.name
ORDER BY total_records DESC;

-- Categorize doctors as Senior > 15 yrs exxperience, Mid Level Between 5-15, Else Junior
SELECT 
    doctor_id, name,
    CASE 
        WHEN years_of_experience > 15 THEN 'Senior'
        WHEN years_of_experience >= 5 AND years_of_experience <= 15 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS Experience_Level
FROM Doctors
ORDER BY years_of_experience DESC;