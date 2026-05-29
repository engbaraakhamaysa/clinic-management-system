CREATE TABLE doctors (

    id SERIAL PRIMARY KEY,

    full_name VARCHAR(100) NOT NULL,

    email VARCHAR(50) UNIQUE NOT NULL,

    gender VARCHAR(10) CHECK (gender IN ('Male', 'Female')),

    salary NUMERIC(10,2),

    specialization VARCHAR(50) NOT NULL,

    phone VARCHAR(50) UNIQUE NOT NULL,

    department_id INTEGER NOT NULL,

    CONSTRAINT fk_doctor_department
    FOREIGN KEY (department_id) REFERENCES departments(id)

);