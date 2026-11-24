-- ограничение NOTNULL
ALTER TABLE culture_data.culture_palaces_clubs
ALTER COLUMN "data.general.name" SET NOT NULL;

ALTER TABLE culture_data.culture_palaces_clubs
ALTER COLUMN "data.general.address.fullAddress" SET NOT NULL;