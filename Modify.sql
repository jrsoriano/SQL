USE Futbol

SELECT * FROM PLAYERS 

PlayerID	Position	Nationality	FirstName	LastName
1			Goalkeeper	Spanish		David		De Gea
7			Forward		Portuguese	Cristiano	Ronaldo
8			Midfielder	Japanese	Keisuke		Honda
9			Forward		Italian		Roberto		Baggio
10			Midfielder	Argentino	Lionel		Messi
11			Forward		Welsh		Gareth		Bale
12			Defender	Brasilero	Marcelo		Vieira
17			Midfielder	Belgian		Eden		Hazard
19			Forward		German		Mario		Gotze
20			Forward		Dutch		Arjen		Robben
23			Midfielder	Chileno		Arturo		Vidal



ALTER TABLE PLAYERS 
ADD DOB DATE


SELECT * FROM PLAYERS 


PlayerID	Position	Nationality	FirstName	LastName	DOB
1			Goalkeeper	Spanish		David		De Gea		NULL	
7			Forward		Portuguese	Cristiano	Ronaldo		NULL	
8			Midfielder	Japanese	Keisuke		Honda		NULL
9			Forward		Italian		Roberto		Baggio		NULL
10			Midfielder	Argentino	Lionel		Messi		NULL
11			Forward		Welsh		Gareth		Bale		NULL
12			Defender	Brasilero	Marcelo		Vieira		NULL
17			Midfielder	Belgian		Eden		Hazard		NULL
19			Forward		German		Mario		Gotze		NULL
20			Forward		Dutch		Arjen		Robben		NULL
23			Midfielder	Chileno		Arturo		Vidal		NULL




USE Futbol

SELECT * FROM COACHES

CoachID	FirstName		LastName
1		Carlo			Ancelotti
2		Pep				Guardiola
3		José			Mourinho
4		Héctor			Tapia
5		Greg			Vanney
6		Massimiliano	Allegri
7		Marcelo			Fernandes


ALTER TABLE COACHES 
ADD Nationality VARCHAR 


CoachID	FirstName		LastName	Nationality
1		Carlo			Ancelotti	NULL
2		Pep				Guardiola	NULL
3		José			Mourinho	NULL
4		Héctor			Tapia		NULL
5		Greg			Vanney		NULL
6		Massimiliano	Allegri		NULL
7		Marcelo			Fernandes	NULL


USE Futbol

SELECT * FROM ROSTER

PlayerID	TeamID
1			1902
7			1902
9			1897
12			1925
17			1905
19			1900
20			1900


USE Futbol

DROP TABLE ROSTER

Command(s) completed successfully.



