-- Top 10 clientes que mais gastaram no último mês
SELECT 
    c.FirstName || ' ' || c.LastName AS Cliente, 
    ROUND(SUM(i.Total), 2) AS GastoTotal
FROM Invoice AS i
JOIN Customer AS c ON i.CustomerId = c.CustomerId
WHERE i.InvoiceDate >= date('now', '-1 month')
GROUP BY c.CustomerId
ORDER BY GastoTotal DESC
LIMIT 10;

-- Top 10 músicas com mais vendas
SELECT 
    t.Name AS Musica, 
    COUNT(ii.TrackId) AS Vendas
FROM InvoiceLine AS ii
JOIN Track AS t ON ii.TrackId = t.TrackId
GROUP BY ii.TrackId
ORDER BY Vendas DESC
LIMIT 10;

-- Transações acima de R$30 (valores fictícios)
SELECT 
    InvoiceId, 
    CustomerId, 
    InvoiceDate, 
    ROUND(Total, 2) AS Total
FROM Invoice
WHERE Total > 30
ORDER BY Total DESC;

-- Informações de cliente + país + valor total da compra
SELECT 
    c.FirstName || ' ' || c.LastName AS Cliente, 
    c.Country, 
    ROUND(i.Total, 2) AS ValorTotal
FROM Invoice AS i
JOIN Customer AS c ON i.CustomerId = c.CustomerId
ORDER BY ValorTotal DESC;
