-- Run the the query to see the transction table contents- 
SELECT * FROM transactions;

-- 1. How many total transactions are in the dataset?
SELECT COUNT(*) 
FROM transactions;

-- 2.What is the minimum, maximum, and average transaction amount and ROUND them to 2?
SELECT 
    ROUND(MAX(amount), 2) AS max_amount,
    ROUND(MIN(amount), 2) AS min_amount,
    ROUND(AVG(amount), 2) AS avg_amount
FROM
    transactions;
    
-- 3. How many unique sender accounts exist?
SELECT 
    COUNT(DISTINCT sender_account) AS unique_sender
FROM
    transactions;
    
-- 4.How many unique receiver accounts exist?
SELECT 
COUNT(DISTINCT receiver_account) AS receiver_sender
FROM
Transactions;

-- 5.How many transactions are flagged as laundering?
SELECT COUNT(*) AS laundered_count
FROM transactions
WHERE is_laundering='1';

-- 6.What percentage of transactions are suspicious?
SELECT 
ROUND(AVG(is_laundering) * 100, 2) AS suspicious_percentage
FROM transactions;
-- OR
SELECT 
ROUND(
    (COUNT(CASE WHEN is_laundering = 1 THEN 1 END) / COUNT(*)) * 100,
    2
) AS suspicious_percentage
FROM transactions;

-- 7.What is the average amount of laundering transactions?
SELECT round( AVG(amount),2) avg_money_laundered
FROM transactions
WHERE is_laundering='1';

-- 8.What is the largest laundering transaction?
SELECT round( MAX(amount),2) max_money_laundered
FROM transactions
WHERE is_laundering='1';

-- 9.What are the different laundering types present in the dataset?
SELECT laundering_type, COUNT (laundering_type) AS laundered_types_count
FROM transactions GROUP BY laundering_type;

-- 10.Which laundering type occurs most frequently?
SELECT laundering_type, COUNT(*) AS laundered_types_count
FROM transactions
GROUP BY laundering_type
ORDER BY laundered_types_count DESC
LIMIT 1;


-- 9.Which laundering type has the highest total transaction amount?
SELECT laundering_type, SUM(amount) 
AS total_transaction_amount
FROM transactions
GROUP BY laundering_type
ORDER BY total_transaction_amount DESC
LIMIT 1;

-- 12.	Which accounts have the highest total transaction amount?
SELECT sender_account, SUM(amount) AS total_transaction_amount
FROM transactions
GROUP BY sender_account
ORDER BY total_transaction_amount DESC
LIMIT 1;

-- 15.	Which sender bank locations have the most transactions?
SELECT Sender_bank_location, COUNT(*) AS transaction_count
FROM transactions
GROUP BY Sender_bank_location
ORDER BY transaction_count DESC;

-- 16.	Which sender locations have the most laundering transactions?
SELECT sender_bank_location,
COUNT(*) AS laundered_count
FROM transactions
WHERE is_laundering = 1
GROUP BY Sender_bank_location
ORDER BY laundered_count DESC
LIMIT 1;

-- 17.Which sender → receiver location pair occurs most frequently?
SELECT  Sender_bank_location, receiver_bank_location , COUNT(*) AS frequent_pair
FROM transactions
GROUP BY Sender_bank_location, receiver_bank_location
ORDER BY frequent_pair DESC
LIMIT 1;

-- 18.	Which payment type is used most frequently?
SELECT payment_type, COUNT(*) AS payment_count
FROM transactions
GROUP BY payment_type
ORDER BY payment_count DESC
LIMIT 1;
 
-- 18.Which payment type is most associated with laundering?
SELECT payment_type, count(*) AS most_laundered
FROM transactions
WHERE is_laundering= 1
GROUP BY payment_type
ORDER BY most_laundered DESC
LIMIT 1;

-- 19.	What is the average transaction amount for each payment type?

SELECT payment_type, ROUND(AVG(amount),2) AS avg_amount
FROM transactions
GROUP BY payment_type
ORDER BY avg_Amount DESC;

-- 21.What are the top 10 highest transactions?
SELECT sender_account, receiver_account, amount
FROM transactions
ORDER BY amount DESC
LIMIT 10;

-- 20.Classify transactions as ‘red flag’ or ‘safe’ depending on whether the transaction amount exceeds a specified threshold?
SELECT sender_account,
       receiver_account,
       amount,
       CASE
           WHEN amount > 10000 THEN 'red_flag'
           ELSE 'safe'
       END AS transaction_status
FROM transactions;

-- 22.Among high-value transactions, how many are laundering transactions?
SELECT COUNT(*) AS laundering_high_value_count
FROM transactions
WHERE amount > 100000
AND is_laundering = 1;

-- 24.On which date were the most transactions recorded?
SELECT date,  
COUNT(*) AS total_transactions
FROM transactions
GROUP BY date
ORDER BY total_transactions DESC
LIMIT 1;

-- 25.On which date were the most laundering transactions recorded?
SELECT date, COUNT(*) AS laundering_transactions
FROM transactions
WHERE is_laundering = 1
GROUP BY date
ORDER BY laundering_transactions DESC
LIMIT 1;

-- 26.How many transactions happen per day?
SELECT date, COUNT(*) AS daily_transactions
FROM transactions
GROUP BY date
ORDER BY date;

