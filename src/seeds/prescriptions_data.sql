INSERT INTO prescriptions
(medication_name, instructions, dosage, appointment_id)
VALUES

('Amoxicillin', 'Take after food for 5 days', '500mg twice daily', 1),
('Paracetamol', 'For fever and pain relief', '1 tablet every 6 hours', 2),

('Ibuprofen', 'Anti-inflammatory use', '400mg twice daily', 4),
('Vitamin D', 'Daily supplement', '1 capsule daily', 5),

('Cetirizine', 'For allergy symptoms', '10mg once daily', 7),
('Hydrocortisone Cream', 'Apply on affected skin', '2 times daily', 8),

('Diclofenac', 'For joint pain', '50mg twice daily', 10),
('Calcium Tablets', 'Bone strengthening', '1 tablet daily', 11),

('Aspirin', 'Blood thinning', '75mg daily', 13),
('Losartan', 'Blood pressure control', '50mg daily', 14),

('Salbutamol', 'For breathing issues', '2 puffs as needed', 16),
('Antihistamine Syrup', 'For kids allergy', '5ml twice daily', 17),

('Clindamycin', 'Skin infection treatment', '300mg three times daily', 19),
('Benzoyl Peroxide', 'Acne treatment', 'Apply once nightly', 20),

('Omeprazole', 'For stomach acid', '20mg before breakfast', 22),
('Metformin', 'For diabetes control', '500mg twice daily', 23),

('Zinc Tablets', 'Boost immunity', '1 tablet daily', 25),
('Eye Drops', 'For eye irritation', '2 drops 3 times daily', 26),

('Prednisolone', 'Anti-inflammatory steroid', '10mg daily', 28),
('Vitamin C', 'General immunity support', '1 tablet daily', 29)

RETURNING *;