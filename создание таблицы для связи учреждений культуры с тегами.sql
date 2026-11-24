-- создание таблицы для связи учреждений культуры с тегами
CREATE TABLE culture_data.m2m_culture_palaces_clubs_tags (
    id SERIAL PRIMARY KEY,
    culture_id BIGINT NOT NULL,
    tag_id INTEGER NOT NULL,

    FOREIGN KEY (culture_id)
        REFERENCES culture_data.culture_palaces_clubs ("data.general.id"),

    FOREIGN KEY (tag_id)
        REFERENCES culture_data.tags (id)
);