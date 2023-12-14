#Q5.Who is the best customer? 
#The customer who has spent the most money will be declared the best customer.
# Write a query that returns the person who has spent the most money

SELECT 
    customer.customer_id,
    customer.first_name,
    customer.last_name,
    sum(invoice.total) as inv_total
FROM
    customer
        JOIN
    invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
order by inv_total desc
limit 1
;
