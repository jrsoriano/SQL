USE Futbol

SELECT t.TeamID, c.FirstName, c.LastName 
FROM TEAMS AS t JOIN COACHES AS c 
ON (t.CoachID = c.CoachID)
ORDER BY LastName ASC;

USE Futbol
						    
SELECT FirstName,LastName
FROM PLAYERS
WHERE PlayerID NOT IN (SELECT PlayerID 
						    FROM ROSTER)
							
USE Futbol

SELECT COUNT (Position) AS 'Strikers'
FROM PLAYERS 
WHERE Position = 'Forward'


