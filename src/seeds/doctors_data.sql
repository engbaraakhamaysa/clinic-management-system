INSERT INTO doctors
(full_name, email, gender, salary, specialization, phone, department_id)
VALUES

-- Cardiology (id = 1)
('Dr. Ahmed Nasser', 'ahmed.nasser1@gmail.com', 'Male', 5000.00, 'Cardiologist', '0599000001', 1),
('Dr. Lina Abu Omar', 'lina.abuomar2@gmail.com', 'Female', 5200.00, 'Heart Specialist', '0599000002', 1),
('Dr. Omar Khalil', 'omar.khalil3@gmail.com', 'Male', 5100.00, 'Cardiology Consultant', '0599000003', 1),

-- Pediatrics (id = 2)
('Dr. Sara Yassin', 'sara.yassin4@gmail.com', 'Female', 4800.00, 'Pediatrician', '0599000004', 2),
('Dr. Youssef Hamdan', 'youssef.hamdan5@gmail.com', 'Male', 4900.00, 'Child Specialist', '0599000005', 2),
('Dr. Huda Nabil', 'huda.nabil6@gmail.com', 'Female', 4950.00, 'Pediatric Consultant', '0599000006', 2),

-- Dermatology (id = 3)
('Dr. Khaled Saadi', 'khaled.saadi7@gmail.com', 'Male', 5300.00, 'Dermatologist', '0599000007', 3),
('Dr. Ruba Fares', 'ruba.fares8@gmail.com', 'Female', 5400.00, 'Skin Specialist', '0599000008', 3),
('Dr. Anas Jaber', 'anas.jaber9@gmail.com', 'Male', 5250.00, 'Dermatology Consultant', '0599000009', 3),

-- Orthopedics (id = 4)
('Dr. Bilal Darwish', 'bilal.darwish10@gmail.com', 'Male', 5600.00, 'Orthopedic Surgeon', '0599000010', 4),
('Dr. Dana Qasem', 'dana.qasem11@gmail.com', 'Female', 5500.00, 'Bone Specialist', '0599000011', 4),
('Dr. Majed Abu Ali', 'majed.abuali12@gmail.com', 'Male', 5700.00, 'Orthopedics Consultant', '0599000012', 4)

RETURNING *;