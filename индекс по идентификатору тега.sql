-- индекс по идентификатору тега
CREATE INDEX idx_m2m_tag_id
ON culture_data.m2m_culture_palaces_clubs_tags (tag_id);