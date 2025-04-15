# Consulta de Dados com SQL

## 💡 Objetivo
Consultar e analisar dados usando SQL em um banco de dados fictício (Chinook) simulando um cenário de e-commerce musical.

## 🛠️ Tecnologias
- SQLite (via SQLite Online: https://sqliteonline.com/)
- Banco: Chinook_Sqlite.sqlite

## 📊 Consultas criadas
- Clientes que mais gastaram no último mês
- Produtos (músicas) mais vendidos
- Transações acima de um certo valor
- Cruzamento de informações de cliente e compras

## ▶️ Como usar
1. Acesse https://sqliteonline.com/
2. Faça upload do arquivo `Chinook_Sqlite.sqlite`
3. Cole e execute os scripts SQL do arquivo `queries.sql`

## 📝 Observações
- Os valores estão originalmente em dólar.
- A data usada para "último mês" é relativa ao momento da execução (`date('now', '-1 month')`).
