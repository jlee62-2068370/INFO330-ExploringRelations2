-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName, e.LastName, count(e.EmployeeId) AS NumInvoices
FROM invoices AS i, customers AS c, employees AS e
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId
AND substr(i.InvoiceDate, 1, 4) = '2010'
GROUP BY e.EmployeeId
LIMIT 1;
