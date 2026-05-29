CREATE TABLE appointments (

    id SERIAL PRIMARY KEY,

    appointment_datetime TIMESTAMP NOT NULL,

    status VARCHAR(20)
    CHECK (status IN ('Pending', 'Completed', 'Cancelled')),

    notes TEXT,

    doctor_id INTEGER NOT NULL,

    patient_id INTEGER ,

    CONSTRAINT fk_appointment_doctor
    FOREIGN KEY (doctor_id) REFERENCES doctors(id),

    CONSTRAINT fk_appointment_patient
    FOREIGN KEY (patient_id) REFERENCES patients(id),

    CONSTRAINT uq_doctor_appointment_time
    UNIQUE (doctor_id, appointment_datetime)

);