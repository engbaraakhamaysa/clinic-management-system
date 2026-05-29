CREATE TABLE departments(

    id SERIAL PRIMARY KEY,

    name VARCHAR(30) UNIQUE NOT NULL,

    description TEXT,

    location VARCHAR(50)
);