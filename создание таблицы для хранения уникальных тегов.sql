-- создание таблицы для хранения уникальных тегов
CREATE TABLE culture_data.tags (
    id SERIAL PRIMARY KEY,
    tag_name TEXT UNIQUE NOT NULL,
    description TEXT
);