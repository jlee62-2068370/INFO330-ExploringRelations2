-- What was the most purchased track of 2013?
SELECT t.name AS 'Track Name', count(t.name) AS timesPurchased, substr(i.InvoiceDate, 1, 4)
FROM invoice_items AS item, invoices AS i, tracks as t
WHERE t.TrackId = item.TrackId
AND i.InvoiceId = item.InvoiceId
AND substr(i.InvoiceDate, 1, 4) = '2013'
GROUP BY t.name
ORDER BY timesPurchased DESC
LIMIT 9; -- for some reason I was getting 9 entries for the greatest amount (which was 2)
