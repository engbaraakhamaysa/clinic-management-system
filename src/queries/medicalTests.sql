-- =========================================
-- 1. CREATE MEDICAL TEST (INSERT)
-- =========================================
-- Add new medical tests linked to appointments
INSERT INTO medical_tests
(test_name, result, price, appointment_id)
VALUES
('Heart Echo', 'Mild valve issue detected', 200.00, 1),
('Stress Test', 'Patient stable', 180.00, 1),
('Vitamin D Test', 'Severe deficiency', 45.00, 1)
RETURNING *;


-- =========================================
-- 2. READ MEDICAL TESTS
-- =========================================

-- Get all medical tests
SELECT * FROM medical_tests;

-- Get medical test by ID
SELECT * FROM medical_tests
WHERE id = 1;


-- =========================================
-- 3. UPDATE MEDICAL TEST
-- =========================================
-- Update medical test price
UPDATE medical_tests
SET price = 50.00
WHERE id = 23
RETURNING *;


-- =========================================
-- 4. DELETE MEDICAL TEST
-- =========================================
-- Delete medical test by ID
DELETE FROM medical_tests
WHERE id = 22
RETURNING *;


-- =========================================
-- 5. TESTS BY APPOINTMENT
-- =========================================
-- Get all tests linked to a specific appointment
SELECT *
FROM medical_tests
WHERE appointment_id = 1;


-- =========================================
-- 6. MEDICAL TEST REPORTS
-- =========================================

-- Calculate total revenue generated from medical tests
SELECT
    SUM(price) AS total_revenue
FROM medical_tests;


-- =========================================
-- 7. SEARCH MEDICAL TESTS
-- =========================================
-- Search medical tests by name
SELECT *
FROM medical_tests
WHERE test_name LIKE '%b%';


-- =========================================
-- 8. MEDICAL TESTS WITH APPOINTMENTS
-- =========================================
-- Display test information with appointment date and time
SELECT
    m.test_name,
    a.appointment_datetime
FROM medical_tests m
INNER JOIN appointments a
ON m.appointment_id = a.id;


-- =========================================
-- 9. MEDICAL TESTS WITH PATIENTS
-- =========================================
-- Display medical tests with patient information
SELECT
    m.test_name,
    p.full_name AS patient
FROM medical_tests m
INNER JOIN appointments a
ON m.appointment_id = a.id
INNER JOIN patients p
ON a.patient_id = p.id;


-- =========================================
-- 10. FULL MEDICAL TEST REPORT
-- =========================================
-- Display complete medical test details including
-- patient, doctor, appointment date, and test cost
SELECT
    m.test_name,
    m.price,
    p.full_name AS patient,
    d.full_name AS doctor,
    a.appointment_datetime
FROM medical_tests m
INNER JOIN appointments a
ON m.appointment_id = a.id
INNER JOIN patients p
ON a.patient_id = p.id
INNER JOIN doctors d
ON a.doctor_id = d.id;