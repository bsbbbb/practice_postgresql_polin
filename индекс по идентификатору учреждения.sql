-- индекс по идентификатору учреждения
CREATE INDEX idx_m2m_culture_id
ON culture_data.m2m_culture_palaces_clubs_tags (culture_id);
