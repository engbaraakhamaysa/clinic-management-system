INSERT INTO appointments
(appointment_datetime, status, notes, doctor_id, patient_id)
VALUES

('2026-06-01 09:00:00', 'Pending', 'First heart checkup', 1, 1),
('2026-06-01 10:00:00', 'Completed', 'Routine cardiology follow-up', 1, 2),
('2026-06-01 11:00:00', 'Cancelled', 'Patient cancelled appointment', 1, 3),

('2026-06-02 09:30:00', 'Pending', 'Child fever examination', 4, 4),
('2026-06-02 10:30:00', 'Completed', 'Vaccination follow-up', 4, 5),
('2026-06-02 11:30:00', 'Pending', 'Regular child checkup', 4, NULL),

('2026-06-03 08:00:00', 'Completed', 'Skin allergy consultation', 7, 6),
('2026-06-03 09:00:00', 'Pending', 'Acne treatment session', 7, 7),
('2026-06-03 10:00:00', 'Cancelled', 'Doctor unavailable', 7, 8),

('2026-06-04 09:00:00', 'Pending', 'Knee pain diagnosis', 10, 9),
('2026-06-04 10:00:00', 'Completed', 'Bone fracture review', 10, 10),
('2026-06-04 11:00:00', 'Pending', 'Orthopedic consultation', 10, NULL),

('2026-06-05 08:30:00', 'Completed', 'Blood pressure monitoring', 2, 11),
('2026-06-05 09:30:00', 'Pending', 'Chest pain examination', 2, 12),
('2026-06-05 10:30:00', 'Cancelled', 'Late cancellation', 2, 13),

('2026-06-06 09:00:00', 'Pending', 'Pediatric nutrition advice', 5, 14),
('2026-06-06 10:00:00', 'Completed', 'Child growth monitoring', 5, 15),
('2026-06-06 11:00:00', 'Pending', 'Available slot', 5, NULL),

('2026-06-07 08:00:00', 'Completed', 'Hair loss treatment', 8, 16),
('2026-06-07 09:00:00', 'Pending', 'Skin rash evaluation', 8, 17),
('2026-06-07 10:00:00', 'Cancelled', 'Patient did not attend', 8, 18),

('2026-06-08 09:00:00', 'Completed', 'Back pain treatment', 11, 19),
('2026-06-08 10:00:00', 'Pending', 'Shoulder injury consultation', 11, 20),
('2026-06-08 11:00:00', 'Pending', 'Available orthopedic slot', 11, NULL),

('2026-06-09 08:30:00', 'Pending', 'Heart rhythm analysis', 3, 21),
('2026-06-09 09:30:00', 'Completed', 'ECG follow-up', 3, 22),
('2026-06-09 10:30:00', 'Cancelled', 'Rescheduled appointment', 3, 23),

('2026-06-10 09:00:00', 'Completed', 'Child vaccination', 6, 24),
('2026-06-10 10:00:00', 'Pending', 'Pediatric consultation', 6, 25),
('2026-06-10 11:00:00', 'Pending', 'Future reservation slot', 6, NULL)

RETURNING *;