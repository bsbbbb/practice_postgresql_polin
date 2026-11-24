-- добавление уникальных тегов в таблицу
INSERT INTO culture_data.tags (tag_name, description)
SELECT DISTINCT
    tag->>'name' AS tag_name,
    tag->>'sysName' AS description
FROM culture_data.culture_palaces_clubs,
     jsonb_array_elements("data.general.tags") AS tag
WHERE tag->>'name' IS NOT NULL;