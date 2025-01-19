CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    image_id INTEGER,
    name VARCHAR NOT NULL,
    email VARCHAR NOT NULL UNIQUE,
    password VARCHAR NOT NULL,
    preference VARCHAR,
    weight_unit VARCHAR,
    height_unit VARCHAR,
    weight FLOAT,
    height FLOAT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    FOREIGN KEY (image_id) REFERENCES files(id)
);