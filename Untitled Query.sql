CREATE TABLE accounts (
    user_id serial PRIMARY KEY,
    username character varying(12),
    city character varying(128),
    transactions_completed integer,
    transactions_attempted integer,
    account_balance numeric(12,2)
);

INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('shawn', 'chicago', 5, 10, 355.80),
('cherise', 'minneapolis', 9, 9, 4000.00),
('larry', 'minneapolis', 3, 4, 77.01),
('dallas', 'new york', 6, 12, 0.99),
('anthony', 'chicago', 0, 0, 0.00),
('travis', 'miami', 1, 100, 500000.34),
('davey', 'chicago', 9, 99, 98.04),
('ora', 'phoenix', 88, 90, 3.33),
('grace', 'miami', 7, 9100, 34.78),
('hope', 'phoenix', 4, 10, 50.17);

--Select all users from Chicago
SELECT *
FROM accounts 
WHERE city = 'chicago';

--Select all users who's usernames contain an a
SELECT *
FROM accounts 
WHERE username ILIKE '%a%';

--Update records with new balance of 10.00
UPDATE accounts
SET account_balance = 10
WHERE account_balance = 0 AND transactions_attempted = 0;

--Select all users who have attempted 9 or more transactions 
SELECT * 
FROM accounts 
WHERE transactions_attempted >= 9;

--Select username and account of three users with highest balances 
SELECT username , account_balance 
FROM accounts 
ORDER BY account_balance DESC 
LIMIT 3;

--get all users with account balance of 100 or more 
SELECT * 
FROM accounts 
WHERE account_balance >= 100;

--add a new record 
INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance) VALUES ('alaethia', 'minneapolis', 7, 14, 79.99);

--delete users who live in miami and phoenix who have attempted less than 5 transactions 
DELETE FROM accounts 
WHERE city = 'miami' AND city = 'phoenix' AND transactions_attempted <= 5;

--testing to see if delete worked 
SELECT * 
FROM accounts 
WHERE city = 'miami';

