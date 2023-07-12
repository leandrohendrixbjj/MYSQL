use sucos_vendas;
SELECT concat('Hoje é dia: ', CURRENT_TIMESTAMP) AS HOJE_1;
SELECT concat(
        'Hoje é ano: ',
        DATE_FORMAT(CURRENT_TIMESTAMP, '%Y')
    ) AS ANO;
-- 2023
SELECT concat(
        'Hoje é ano: ',
        DATE_FORMAT(CURRENT_TIMESTAMP, '%y')
    ) AS ANO_2;
-- 23
SELECT concat(
        'Hoje é dia: ',
        DATE_FORMAT(CURRENT_TIMESTAMP, '%d-%m-%Y')
    ) AS HOJE_2;
SELECT concat(
        'Hoje é dia: ',
        DATE_FORMAT(CURRENT_TIMESTAMP, '%m')
    ) AS HOJE_2;
-- Impressão apenas do mês
SELECT concat(
        'Hoje é dia: ',
        DATE_FORMAT(CURRENT_TIMESTAMP, '%W')
    ) AS HOJE_2;
-- Dia da semana por extenso
SELECT CONVERT('20', CHAR) AS NUM;