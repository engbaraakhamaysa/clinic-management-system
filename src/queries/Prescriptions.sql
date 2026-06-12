-- =========================================
-- 1. CREATE PRESCRIPTION (INSERT)
-- =========================================
-- Add new prescriptions linked to appointments
INSERT INTO prescriptions
(medication_name, instructions, dosage, appointment_id)
VALUES
('Ibuprofen', 'Anti-inflammatory use', '400mg twice daily', 1),
('Vitamin D', 'Daily supplement', '1 capsule daily', 1)
RETURNING *;


-- =========================================
-- 2. READ PRESCRIPTIONS
-- =========================================

-- Get all prescriptions
SELECT * FROM prescriptions;

-- Get prescription by ID
SELECT * FROM prescriptions
WHERE id = 1;


-- =========================================
-- 3. UPDATE PRESCRIPTION
-- =========================================
-- Update prescription dosage
UPDATE prescriptions
SET dosage = '2 capsules daily'
WHERE id = 22
RETURNING *;


-- =========================================
-- 4. DELETE PRESCRIPTION
-- =========================================
-- Delete prescription by ID
DELETE FROM prescriptions
WHERE id = 22
RETURNING *;


-- =========================================
-- 5. PRESCRIPTIONS BY APPOINTMENT
-- =========================================
-- Get all medications prescribed during a specific visit
SELECT *
FROM prescriptions
WHERE appointment_id = 1;


-- =========================================
-- 6. SEARCH PRESCRIPTIONS
-- =========================================
-- Search prescriptions by medication name
SELECT *
FROM prescriptions
WHERE medication_name LIKE '%b%';


-- =========================================
-- 7. PRESCRIPTION REPORTS
-- =========================================
-- Count total prescriptions
SELECT
    COUNT(id) AS total_prescriptions
FROM prescriptions;


-- =========================================
-- 8. PRESCRIPTIONS WITH APPOINTMENTS
-- =========================================
-- Display medications with appointment date and time
SELECT
    p.medication_name,
    a.appointment_datetime
FROM prescriptions p
INNER JOIN appointments a
ON p.appointment_id = a.id;


-- =========================================
-- 9. PRESCRIPTIONS WITH PATIENTS
-- =========================================
-- Display prescribed medications with patient information
SELECT
    p.full_name AS patient,
    pr.medication_name
FROM prescriptions pr
INNER JOIN appointments a
ON pr.appointment_id = a.id
INNER JOIN patients p
ON a.patient_id = p.id;


-- =========================================
-- 10. FULL MEDICAL RECORD VIEW
-- =========================================
-- Display patient, doctor, medical test,
-- and prescription information in one report
SELECT
    p.full_name AS patient,
    d.full_name AS doctor,
    m.test_name,
    pr.medication_name
FROM prescriptions pr
INNER JOIN appointments a
ON pr.appointment_id = a.id
INNER JOIN patients p
ON a.patient_id = p.id
INNER JOIN doctors d
ON a.doctor_id = d.id
INNER JOIN medical_tests m
ON m.appointment_id = a.id;