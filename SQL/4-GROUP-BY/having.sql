use sucos_vendas;
-- Busca clientes com volume de vendas maior que 11196500 ano de 2018
SELECT Vendas.nome,
    Vendas.ano,
    Sum(Vendas.Total) AS Total
FROM (
        SELECT C.nome,
            YEAR(N.DATA_VENDA) AS Ano,
            SUM(C.VOLUME_DE_COMPRA) AS Total
        FROM tabela_de_clientes C
            LEFT JOIN notas_fiscais N ON (N.cpf = C.cpf)
        GROUP BY C.nome,
            N.DATA_VENDA
        HAVING Ano >= 2018
    ) Vendas
GROUP BY nome,
    ano
HAVING Total > '11196500'