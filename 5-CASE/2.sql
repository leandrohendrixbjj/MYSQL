use sucos_vendas;
select CASE
        WHEN year(DATA_DE_NASCIMENTO) < 1990 THEN 'Velhos'
        WHEN year(DATA_DE_NASCIMENTO) between 1990 AND 1995 THEN 'Jovens'
        ELSE 'Crianças'
    END AS 'Tipo',
    count(*) AS Total
from tabela_de_clientes
GROUP BY CASE
        WHEN year(DATA_DE_NASCIMENTO) < 1990 THEN 'Velhos'
        WHEN year(DATA_DE_NASCIMENTO) between 1990 AND 1995 THEN 'Jovens'
        ELSE 'Crianças'
    END
Order by Total desc