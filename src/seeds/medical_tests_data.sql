INSERT INTO medical_tests
(test_name, result, price, appointment_id)
VALUES

('ECG', 'Abnormal heart rhythm detected', 120.00, 1),
('Blood Test', 'Normal results', 80.00, 2),

('X-Ray', 'No fractures detected', 100.00, 10),
('MRI Scan', 'Minor inflammation found', 350.00, 11),

('Blood Pressure Test', 'High blood pressure', 50.00, 13),
('CBC Test', 'Normal blood count', 70.00, 14),

('Allergy Test', 'Mild skin allergy detected', 90.00, 7),
('Skin Biopsy', 'Benign condition', 150.00, 8),

('Bone Density Test', 'Weak bone density', 130.00, 19),
('X-Ray Spine', 'Mild disc problem', 110.00, 20),

('Glucose Test', 'High sugar level', 60.00, 22),
('HbA1c Test', 'Diabetes confirmed', 75.00, 23),

('Pediatric Growth Test', 'Normal growth rate', 55.00, 5),
('Nutrition Test', 'Vitamin deficiency detected', 65.00, 4),

('Liver Function Test', 'Normal liver activity', 95.00, 17),
('Kidney Function Test', 'Slight abnormality', 95.00, 16),

('Heart Echo', 'Mild valve issue detected', 200.00, 3),
('Stress Test', 'Patient stable', 180.00, 9),

('Vitamin D Test', 'Severe deficiency', 45.00, 6),
('Iron Test', 'Low iron level detected', 50.00, 15)

RETURNING *;