CREATE TABLE prescriptions (

    id SERIAL PRIMARY KEY,

    medication_name VARCHAR(100) NOT NULL,

    instructions TEXT NOT NULL,

    dosage VARCHAR(50) NOT NULL,

    appointment_id INTEGER NOT NULL,

    CONSTRAINT fk_prescription_appointment
    FOREIGN KEY (appointment_id) REFERENCES appointments(id)

);