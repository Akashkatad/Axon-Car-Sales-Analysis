USE classicmodels;

select * from customers;

-- Checking Duplicate Value from Column

select customerName,count(*) from customers
group by customerName
having count(*) > 1;

-- Checking Null Values From Column

select row_number() over(), state from customers where 
state is null;

-- Dropping Columns Which are not usefull for Further Analysis

ALTER TABLE orders DROP COLUMN Comments;

-- After conducting a comprehensive review of all columns in every table,
-- I can confidently affirm the absence of duplicate values. Furthermore,
-- I have taken the initiative to remove any columns that are deemed irrelevant 
-- for our subsequent analysis.

