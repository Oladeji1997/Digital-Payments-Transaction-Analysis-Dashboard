SELECT @@VERSION;
SELECT name FROM sys.tables;
SELECT * FROM cleaned_upi_transactions;
SELECT COUNT(*) FROM cleaned_upi_transactions;
SELECT SUM(amount) AS total_amount
FROM cleaned_upi_transactions;
SELECT COUNT(*) AS fraud_cases
FROM cleaned_upi_transactions
WHERE fraud_flag = 1;
SELECT hour_of_day, COUNT(*) AS total_transactions
FROM cleaned_upi_transactions
GROUP BY hour_of_day
ORDER BY total_transactions DESC;
SELECT 
    COUNT(*) AS total_transactions,
    SUM(CASE WHEN fraud_flag = 1 THEN 1 ELSE 0 END) AS fraud_cases,
    ROUND(
        SUM(CASE WHEN fraud_flag = 1 THEN 1.0 ELSE 0 END) / COUNT(*) * 100, 
    2) AS fraud_rate_percent
FROM cleaned_upi_transactions;
SELECT 
    transaction_type,
    COUNT(*) AS total,
    SUM(fraud_flag) AS fraud_cases
FROM cleaned_upi_transactions
GROUP BY transaction_type
ORDER BY fraud_cases DESC;
SELECT 
    device_type,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_cases
FROM cleaned_upi_transactions
GROUP BY device_type
ORDER BY fraud_cases DESC;
SELECT 
    network_type,
    COUNT(*) AS total,
    SUM(fraud_flag) AS fraud_cases
FROM cleaned_upi_transactions
GROUP BY network_type
ORDER BY fraud_cases DESC;
SELECT 
    CASE 
        WHEN amount < 500 THEN 'Low'
        WHEN amount BETWEEN 500 AND 2000 THEN 'Medium'
        ELSE 'High'
    END AS amount_band,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_cases
FROM cleaned_upi_transactions
GROUP BY 
    CASE 
        WHEN amount < 500 THEN 'Low'
        WHEN amount BETWEEN 500 AND 2000 THEN 'Medium'
        ELSE 'High'
    END;
SELECT 
    hour_of_day,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_cases
FROM cleaned_upi_transactions
GROUP BY hour_of_day
ORDER BY fraud_cases DESC;
SELECT 
    sender_bank,
    COUNT(*) AS total_transactions,
    SUM(fraud_flag) AS fraud_cases
FROM cleaned_upi_transactions
GROUP BY sender_bank
ORDER BY fraud_cases DESC;
