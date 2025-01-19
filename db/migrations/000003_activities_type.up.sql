CREATE TABLE activities_type (
    id SERIAL PRIMARY KEY,
    name VARCHAR NOT NULL,
    calories_per_minutes FLOAT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP
);