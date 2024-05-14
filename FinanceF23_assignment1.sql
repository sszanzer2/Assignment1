--Shana Szanzer


--SELECT statement that returns Date and IntraDayChange
SELECT
    [Date]= FORMAT(Date,'MMM dd, yyyy'),
    Format([Close] - [Open], '#,##0.00') AS IntraDayChange
FROM
    TS_DailyData
WHERE
    [Ticker] = 'GLD'
    AND ([Close] - [Open]) > 2.00
ORDER BY
    IntraDayChange DESC;

--SELECT statement that returns Date and IntraDayChange where the absolute value is greater than 2.00
SELECT
    [Date]= FORMAT(Date,'MMM dd, yyyy'),
    FORMAT([Close] - [Open], '#,##0.00') AS IntraDayChange
FROM
    TS_DailyData
WHERE
    [Ticker] = 'GLD'
    AND (ABS([Close] - [Open])) > 2.00
ORDER BY
    IntraDayChange DESC;

--SELECT statement that returns Date and IntraDayRange
SELECT [Date]= FORMAT(Date,'MMM dd, yyyy'),
	FORMAT([High] - [Low], '#,##0.00' ) AS IntraDayRange
From TS_DailyData
WHERE [Ticker] = 'GLD'
	AND [High] - [Low] > 2.00
ORDER BY 
	IntraDayRange DESC;

--SELECT statement that returns Date, IntraDayChange, and IntraDayRange
SELECT [Date]= FORMAT(Date,'MMM dd, yyyy'),
	FORMAT([Close] - [Open], '#,##0.00') AS IntraDayChange, 
		Format([High] - [Low], '#,##0.00') AS IntraDayRange
FROM TS_DailyData
WHERE [Ticker] = 'GLD'
	AND [High] - [Low] > 2.00
ORDER BY 
	IntraDayRange DESC;
