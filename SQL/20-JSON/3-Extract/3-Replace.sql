use world_x;
-- Remove as aspas do json
SELECT REPLACE(
        json_extract(doc, "$.geography.Continent"),
        """",
        ""
    ) 'Continent'
FROM countryinfo
WHERE json_extract(doc, "$.government.GovernmentForm") like ("%Monarch%")