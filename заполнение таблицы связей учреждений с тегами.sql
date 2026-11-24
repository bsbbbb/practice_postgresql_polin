-- заполнение таблицы связей учреждений с тегами
INSERT INTO culture_data.m2m_culture_palaces_clubs_tags
    (culture_id, tag_id)
SELECT
    c."data.general.id",
    t.id
FROM culture_data.culture_palaces_clubs AS c,
     jsonb_array_elements(c."data.general.tags") AS tag
JOIN culture_data.tags AS t
    ON t.tag_name = tag->>'name';