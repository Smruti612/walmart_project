USE test_db;

SELECT * FROM test_db.walmart;
-- 1.Retrieve all columns for sales made in a specific branch (e.g., Branch 'A').
SELECT * FROM walmart where Branch ='A';

-- 2. Find the total sales for each product line.
 SELECT Product_line,SUM(total) FROM walmart group by Product_line;
 
-- 3. List all sales transactions where the payment method was 'Cash'.
Select * from walmart where Payment='Cash';

-- 4.  Calculate the total gross income generated in each city. 
Select city,sum(gross_income) as total_gross_income from walmart group by City;


-- 5. Find the average rating given by customers in each branch. 
Select Branch,avg(Rating) as avg_rating from walmart group by Branch order by Branch asc;


-- 6. Determine the total quantity of each product line sold.
Select Product_line,sum(Quantity) as total_quantity from walmart group by Product_line;

-- 7. List the top 5 products by unit price. 
Select  Product_line,Unit_price from walmart order by Unit_price limit 5;


-- 8. Find sales transactions with a gross income greater than 30.
Select * from walmart where gross_income>30;
