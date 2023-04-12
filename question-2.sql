-- Show the sales agent's full name and invoices associated with each sales agent.
SELECT e.FirstName, e.LastName, *
FROM invoices AS i, customers AS c, employees AS e
WHERE i.CustomerId = c.CustomerId
AND c.SupportRepId = e.EmployeeId;
