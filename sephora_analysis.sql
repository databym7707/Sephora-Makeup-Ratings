</> SQL
-- 1. Categorize Performance Tier by prices
SELECT
Performance_Tier,
ROUND (AVG (CAST (REPLACE (PRICE, '$', ") AS REAL)),2) AS AVG_PRICE
FROM Makeup_Reviews_Project
  WHERE Price IS NOT NULL
  GROUP BY Performance_Tier;

-- 2. Find highly rated products
SELECT
  Product_Name,
  Brand_Name,
  Rating,
  Price
FROM Makeup_Reviews_Project
WHERE
  Rating >=4.0
ORDER BY Rating DESC;

-- 3. Calculate average rating per brand
SELECT
  Brand_Name,
ROUND (AVG (RATING), 2) AS Avg_Rating,
COUNT (*) AS Product_Count
FROM Makeup_Reviews_Project
GROUP BY Brand_Name
ORDER BY Avg_Rating DESC;

-- 4. Count products in each tier
SELECT
  Performance_Tier,
COUNT (*) as Tier_Count
FROM Makeup_Reviews_Project
GROUP BY Performance_Tier;
