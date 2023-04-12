-- Show the customer's full name, Invoice ID, Date of the invoice and billing country of customers who are from Brazil.
SELECT c.FirstName, c.LastName, i.InvoiceId, substr(i.InvoiceDate, 1, 10) AS date, c.Country
FROM invoices AS i, customers AS c
WHERE c.Country = 'Brazil'
AND i.CustomerId = c.CustomerId;
