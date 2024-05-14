--Shana Szanzer

SELECT Title , ISBN
FROM LBR_Book
where len(title) > 40
ORDER BY LEN(Title)


SELECT Title , ISBN
FROM LBR_Book
where len(title) < 20 or len(title) > 40
ORDER BY LEN(Title)

SELECT Title , ISBN
FROM LBR_Book
where len(title) between 20 and 40
ORDER BY LEN(Title)

SELECT Title
From LBR_Book
WHERE Title LIKE '%pro%'  
