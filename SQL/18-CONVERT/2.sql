use sucos_vendas;
SELECT CONCAT(
        'O cliente ',
        TC.NOME,
        ' faturou R$ ',
        FORMAT(
            CAST(SUM(INF.QUANTIDADE * INF.preco) AS char (20)),
            "#,###,###. ##"
        ),
        ' no ano ',
        CAST(YEAR(NF.DATA_VENDA) AS char (20))
    ) AS SENTENCA
FROM notas_fiscais NF
    INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
    INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME,
    YEAR(DATA_VENDA)