SELECT *, (CASE 
WHEN Price < 30 THEN '저렴'
WHEN (Price >= 30 AND Price < 60) THEN '적당'
ELSE '비쌈' END) AS price_assessment
FROM Products WHERE CategoryID in (3, 6)
ORDER BY SupplierID DESC;