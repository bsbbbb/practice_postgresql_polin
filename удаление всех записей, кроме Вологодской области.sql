-- транзакция
BEGIN;

-- удаление всех записей, кроме Вологодской области
DELETE FROM culture_data.culture_palaces_clubs
WHERE "data.general.address.fullAddress" IS NULL
   OR "data.general.address.fullAddress" NOT ILIKE '%Вологодская%';