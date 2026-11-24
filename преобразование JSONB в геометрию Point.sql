-- преобразование JSONB в геометрию Point
UPDATE culture_data.culture_palaces_clubs
SET geom = ST_SetSRID(
    ST_GeomFromGeoJSON(
        "data.general.address.mapPosition"::text
    ),
    4326
);