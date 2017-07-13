CREATE VIEW ActiveRoster AS 
SELECT p.FirstName,p.LastName,r.PlayerID,r.TeamID
FROM PLAYERS AS p FULL OUTER JOIN ROSTER AS r
ON(p.PlayerID = r.PlayerID)

USE Futbol

SELECT FirstName,LastName
FROM ActiveRoster;

FirstName	LastName
David		De Gea
Cristiano	Ronaldo
Roberto		Baggio
Marcelo		Vieira
Eden		Hazard
Mario		Gotze
Arjen		Robben


CREATE VIEW PlayerPosition AS 
SELECT p.Position,p.FirstName,p.LastName
FROM PLAYERS AS p JOIN POSITIONS AS pos
ON (p.Position = pos.Position)

USE Futbol

SELECT Position,FirstName,LastName
FROM PlayerPosition;

Position	FirstName	LastName
Goalkeeper	David		De Gea
Forward		Cristiano	Ronaldo
Midfielder	Keisuke		Honda
Forward		Roberto		Baggio
Midfielder	Lionel		Messi
Forward		Gareth		Bale
Defender	Marcelo		Vieira
Midfielder	Eden		Hazard
Forward		Mario		Gotze
Forward		Arjen		Robben
Midfielder	Arturo		Vidal