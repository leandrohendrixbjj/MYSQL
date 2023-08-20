use estudos;
DROP TABLE IF exists country;
CREATE TABLE country(
    id int auto_increment primary key,
    _id varchar(10),
    doc json
);
INSERT INTO country(_id, doc)
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
-- Obtém valor de uma chave (que está dentro de um nó)
SELECT json_extract(doc, '$.government.HeadOfState') AS 'HeadOfState'
FROM country
WHERE _id = 'BRA';