SELECT *
FROM stock_data
LIMIT 10;


--Count total records
SELECT COUNT(*) AS total_records
FROM stock_data;


-- Count companies
SELECT COUNT(DISTINCT Company) AS number_of_companies
FROM stock_data;


-- List companies
SELECT DISTINCT Company
FROM stock_data
ORDER BY Company;


-- 2. DATE RANGE
SELECT
    MIN(Date) AS start_date,
    MAX(Date) AS end_date
FROM stock_data;


-- 3. AVERAGE DAILY RETURN
SELECT
    Company,
    ROUND(AVG(Daily_Return) * 100, 4) AS Avg_Daily_Return_Percent
FROM stock_data
WHERE Daily_Return IS NOT NULL
GROUP BY Company
ORDER BY Avg_Daily_Return_Percent DESC;



-- 4. ANNUALIZED RETURN
SELECT
    Company,
    ROUND(AVG(Daily_Return) * 252 * 100, 2) AS Annualized_Return_Percent
FROM stock_data
WHERE Daily_Return IS NOT NULL
GROUP BY Company
ORDER BY Annualized_Return_Percent DESC;



-- 5. ANNUALIZED VOLATILITY
SELECT
    Company,
    ROUND(STDDEV_SAMP(Daily_Return) * SQRT(252) * 100, 2)
        AS Annualized_Volatility_Percent
FROM stock_data
WHERE Daily_Return IS NOT NULL
GROUP BY Company
ORDER BY Annualized_Volatility_Percent DESC;



-- 6. SHARPE RATIO
-- Risk-free rate = 0%
SELECT
    Company,
    ROUND(
        (AVG(Daily_Return) * 252) /
        (STDDEV_SAMP(Daily_Return) * SQRT(252)),
        2
    ) AS Sharpe_Ratio
FROM stock_data
WHERE Daily_Return IS NOT NULL
GROUP BY Company
ORDER BY Sharpe_Ratio DESC;



-- 7. TRADING VOLUME
SELECT
    Company,
    ROUND(AVG(Volume), 0) AS Average_Daily_Volume
FROM stock_data
GROUP BY Company
ORDER BY Average_Daily_Volume DESC;



-- 8. AVERAGE CLOSING PRICE
SELECT
    Company,
    ROUND(AVG(Close), 2) AS Average_Close_Price
FROM stock_data
GROUP BY Company
ORDER BY Average_Close_Price DESC;



-- 9. HIGHEST AND LOWEST PRICE
SELECT
    Company,
    ROUND(MAX(High), 2) AS Highest_Price,
    ROUND(MIN(Low), 2) AS Lowest_Price
FROM stock_data
GROUP BY Company
ORDER BY Highest_Price DESC;


-- 10. BEST AND WORST DAILY RETURN
SELECT
    Company,
    ROUND(MAX(Daily_Return) * 100, 2) AS Best_Daily_Return_Percent,
    ROUND(MIN(Daily_Return) * 100, 2) AS Worst_Daily_Return_Percent
FROM stock_data
WHERE Daily_Return IS NOT NULL
GROUP BY Company
ORDER BY Best_Daily_Return_Percent DESC;


-- 11. TOTAL TRADING VOLUME
SELECT
    Company,
    SUM(Volume) AS Total_Trading_Volume
FROM stock_data
GROUP BY Company
ORDER BY Total_Trading_Volume DESC;


-- 12. FINAL COMPANY COMPARISON
SELECT
    Company,

    ROUND(AVG(Daily_Return) * 100, 4)
        AS Avg_Daily_Return_Percent,

    ROUND(AVG(Daily_Return) * 252 * 100, 2)
        AS Annualized_Return_Percent,

    ROUND(STDDEV_SAMP(Daily_Return) * SQRT(252) * 100, 2)
        AS Annualized_Volatility_Percent,

    ROUND(
        (AVG(Daily_Return) * 252) /
        (STDDEV_SAMP(Daily_Return) * SQRT(252)),
        2
    ) AS Sharpe_Ratio

FROM stock_data

WHERE Daily_Return IS NOT NULL

GROUP BY Company

ORDER BY Sharpe_Ratio DESC;
