-- TASK 1 


SELECT COUNT(payment_id) num_rows
FROM payment;
-- output 16049 rows in totall 

SELECT customer_id
FROM payment
GROUP BY customer_id;
-- output 599 row(s)

SELECT staff_id
FROM payment
GROUP BY staff_id;
-- output 2 row(s)

SELECT amount
FROM payment
GROUP BY amount;
-- output 19 row(s)

SELECT last_update
FROM payment
GROUP BY last_update;
-- output 704 row(s)

  
-- TASK 2 
SELECT customer_id, MAX(amount) max_amt,
	COUNT(*) num_payments
FROM payment
GROUP BY customer_id;


-- TASK  3

SELECT customer_id, MAX(amount) max_amt,
	COUNT(*) num_payments
FROM payment
GROUP BY customer_id
HAVING COUNT(*) >= 6;


-- TASK  4 - 

CREATE DATABASE database_sales; 

USE database_sales; 

DROP TABLE Sales_Fact; 
   
CREATE TABLE Sales_Fact(
	year_no YEAR,
    month_no INT,
    tot_sales INT PRIMARY KEY NOT NULL
);

SELECT * FROM Sales_Fact;

INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 1, 12528);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 2, 18564);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 3, 17345);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 4, 12821);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 5, 9604);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 6, 16568);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 7, 14233);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 8, 17332);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 9, 16953);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 10, 11801);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 11, 19055);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2019, 12, 23136);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 1,  34277);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 2, 14334);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 3, 1225);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 4, 13553);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 5, 144559);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 6, 13348);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 7, 8728);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 8, 9137);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 9, 15147);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 10, 16382);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 11, 15372);
INSERT INTO Sales_Fact(year_no,month_no,tot_sales) VALUES(2020, 12, 18156);

SELECT year_no,month_no,tot_sales,RANK() OVER (ORDER BY tot_sales) sales_rank
FROM Sales_Fact
GROUP BY tot_sales;

    
-- TASK 5 

SELECT year_no,month_no,tot_sales,RANK() OVER (PARTITION BY (year_no) ORDER BY tot_sales) sales_rank
FROM Sales_Fact
GROUP BY tot_sales
ORDER BY 4;


-- TASK 6 

SELECT year_no, month_no, tot_sales,
	lag(tot_sales) over(order by month_no) prev_month_sales
FROM Sales_Fact
WHERE year_no = 2020;