CREATE TABLE activities (
    id SERIAL PRIMARY KEY,
    user_id INTEGER NOT NULL,
    activity_type_id INTEGER NOT NULL,
    activity_id INTEGER  NOT NULL,
    duration_in_minutes FLOAT NOT NULL,
    calories_burned FLOAT NOT NULL,
    done_at TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP,
    UNIQUE(activity_type_id),
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (activity_id) REFERENCES activities_type(id)
);