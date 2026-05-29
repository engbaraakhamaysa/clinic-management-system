INSERT INTO payments
(amount, payment_method, status, payment_date, appointment_id)
VALUES

-- 1 + ECG (120) = 220
(220.00, 'Card', 'Paid', '2026-06-01 09:30:00', 1),

-- 2 + Blood Test (80) = 180
(180.00, 'Cash', 'Paid', '2026-06-01 10:30:00', 2),

-- 3 Cancelled (no payment)
-- skip

-- 4 + Nutrition Test (65) = 165
(165.00, 'Insurance', 'Paid', '2026-06-02 09:40:00', 4),

-- 5 + Pediatric Growth (55) = 155
(155.00, 'Card', 'Paid', '2026-06-02 10:40:00', 5),

-- 6 Pending no test
(100.00, 'Cash', 'Pending', '2026-06-02 11:40:00', 6),

-- 7 + Allergy (90) = 190
(190.00, 'Card', 'Paid', '2026-06-03 09:10:00', 7),

-- 8 + Skin Biopsy (150) = 250
(250.00, 'Cash', 'Paid', '2026-06-03 09:20:00', 8),

-- 9 + Stress Test (180) = 280
(280.00, 'Insurance', 'Pending', '2026-06-03 10:10:00', 9),

-- 10 + X-Ray (100) = 200
(200.00, 'Card', 'Paid', '2026-06-04 10:10:00', 10),

-- 11 + MRI (350) = 450
(450.00, 'Card', 'Paid', '2026-06-04 11:20:00', 11),

-- 12 no test
(100.00, 'Cash', 'Pending', '2026-06-04 11:40:00', 12),

-- 13 + Blood Pressure (50) = 150
(150.00, 'Cash', 'Paid', '2026-06-05 08:40:00', 13),

-- 14 + CBC (70) = 170
(170.00, 'Card', 'Paid', '2026-06-05 09:40:00', 14),

-- 15 + Iron Test (50) = 150
(150.00, 'Insurance', 'Paid', '2026-06-06 10:10:00', 15),

-- 16 + Kidney (95) = 195
(195.00, 'Card', 'Paid', '2026-06-07 08:10:00', 16),

-- 17 + Liver (95) = 195
(195.00, 'Card', 'Paid', '2026-06-07 09:10:00', 17),

-- 18 cancelled skip

-- 19 + Bone Density (130) = 230
(230.00, 'Cash', 'Paid', '2026-06-08 09:10:00', 19),

-- 20 + X-Ray Spine (110) = 210
(210.00, 'Card', 'Paid', '2026-06-08 10:10:00', 20),

-- 21 no test
(100.00, 'Insurance', 'Pending', '2026-06-09 08:40:00', 21),

-- 22 + Glucose (60) = 160
(160.00, 'Card', 'Paid', '2026-06-09 09:40:00', 22),

-- 23 + HbA1c (75) = 175
(175.00, 'Cash', 'Paid', '2026-06-09 10:40:00', 23),

-- 24 no test
(100.00, 'Insurance', 'Paid', '2026-06-10 09:40:00', 24),

-- 25 no test
(100.00, 'Cash', 'Pending', '2026-06-10 10:40:00', 25)

RETURNING *;