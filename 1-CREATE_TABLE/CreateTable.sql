use estudos;
DROP TABLE IF EXISTS compras;
CREATE TABLE IF NOT EXISTS COMPRAS (
  id INT AUTO_INCREMENT PRIMARY KEY,
  valor DOUBLE,
  data DATE,
  produto_id INT,
  observacoes VARCHAR(255),
  recebido boolean,
  FOREIGN KEY(produto_id) REFERENCES produtos(id)
);
DESC compras;