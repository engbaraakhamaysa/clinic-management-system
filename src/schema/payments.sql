CREATE TABLE payments (

    id SERIAL PRIMARY KEY,

    amount NUMERIC(10,2) NOT NULL CHECK (amount > 0),

    payment_method VARCHAR(20)
    CHECK (payment_method IN ('Cash', 'Card', 'Insurance', 'Online')),

    status VARCHAR(20)
    CHECK (status IN ('Pending', 'Paid', 'Failed', 'Refunded')),

    payment_date TIMESTAMP DEFAULT NOW(),

    appointment_id INTEGER UNIQUE NOT NULL,

    CONSTRAINT fk_payment_appointment
    FOREIGN KEY (appointment_id)
    REFERENCES appointments(id)

);