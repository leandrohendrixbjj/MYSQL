use estudos;
DROP TABLE IF exists country;
CREATE TABLE country(
    id int auto_increment primary key,
    name varchar(10),
    info json
);
INSERT INTO country(name, info)
values(
        'BRA',
        '{
  "GNP": 776739,
  "_id": "00005de917d8000000000000001e",
  "Code": "BRA",
  "Name": "Brazil",
  "IndepYear": 1822,
  "geography": {
    "Region": "South America",
    "Continent": "South America",
    "SurfaceArea": 8547403
  },
  "government": {
    "HeadOfState": "Fernando Henrique Cardoso",
    "GovernmentForm": "Federal Republic"
  },
  "demographics": {
    "Population": 170115000,
    "LifeExpectancy": 62.900001525878906
  }
}'
    );
-- Obtém as Chaves de um json em formato de array
SELECT json_keys(info) as 'Keys'
FROM country
WHERE name = 'BRA';