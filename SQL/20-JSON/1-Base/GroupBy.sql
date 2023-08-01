use world_x;
-- Manipular json com GROUP BY
SELECT JSON_EXTRACT(doc, "$.geography.Continent") 'Continent',
    SUM(JSON_EXTRACT(doc, "$.demographics.Population")) 'Population',
    AVG(
        JSON_EXTRACT(doc, "$.demographics.LifeExpectancy")
    ) 'Life Expectancy'
FROM countryinfo
WHERE JSON_EXTRACT(doc, "$.government.GovernmentForm") LIKE ('%Monarch%')
    AND JSON_EXTRACT(doc, '$.demographics.Population') > 1000000
GROUP BY JSON_EXTRACT(doc, "$.geography.Continent")