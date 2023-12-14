#Question 2. Which countries have the most Invoices?
SELECT 
    COUNT(*) AS 'count of bills', billing_country
FROM
    invoice
GROUP BY billing_country
ORDER BY 'count of bills';