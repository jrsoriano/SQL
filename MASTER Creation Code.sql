CREATE DATABASE Futbol
GO

USE Futbol

CREATE TABLE POSITIONS(
Position	VARCHAR (12) NOT NULL PRIMARY KEY
)	

CREATE TABLE PLAYERS(
PlayerID	INT	NOT NULL PRIMARY KEY,
Position	VARCHAR(12) NOT NULL,
Nationality VARCHAR(45)	NULL,
FirstName	VARCHAR(45)	NULL,
LastName	VARCHAR(45)	NULL,

FOREIGN KEY (Position)
REFERENCES POSITIONS (Position)
ON DELETE CASCADE
ON UPDATE CASCADE 
)

CREATE TABLE COACHES(
CoachID		INT	NOT NULL PRIMARY KEY,
FirstName	VARCHAR(45) NULL,
LastName	VARCHAR(45) NULL,
)

CREATE TABLE TEAMS(
TeamID		INT	NOT NULL PRIMARY KEY,
CoachID		INT	NOT NULL,
TeamName	VARCHAR	(45)	NULL,
LeagueName	VARCHAR (45)	NULL,

CONSTRAINT FK_CoachID
FOREIGN KEY (CoachID)
REFERENCES COACHES(CoachID)
ON DELETE CASCADE
ON UPDATE CASCADE
)

CREATE TABLE ROSTER(
PlayerID	INT NOT NULL,
TeamID		INT NOT NULL,
PRIMARY KEY (PlayerID,TeamID),

CONSTRAINT FK_ROSTER_PlayerID
FOREIGN KEY (PlayerID)
REFERENCES PLAYERS(PlayerID)
ON DELETE NO ACTION
ON UPDATE CASCADE,

CONSTRAINT	FK_ROSTER_TeamID
FOREIGN KEY (TeamID)
REFERENCES TEAMS(TeamID)
ON DELETE CASCADE
ON UPDATE CASCADE
)



INSERT INTO POSITIONS (Position)
VALUES ('Goalkeeper')

INSERT INTO POSITIONS (Position)
VALUES ('Defender')

INSERT INTO POSITIONS (Position)
VALUES ('Midfielder')

INSERT INTO POSITIONS (Position)
VALUES ('Forward')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES	('7', 'Forward', 'Portuguese', 'Cristiano', 'Ronaldo')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('10', 'Midfielder', 'Argentino', 'Lionel', 'Messi')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('9', 'Forward', 'Italian', 'Roberto', 'Baggio')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('19', 'Forward', 'German', 'Mario', 'Gotze')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('12', 'Defender', 'Brasilero', 'Marcelo', 'Vieira')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('1', 'Goalkeeper', 'Spanish', 'David', 'De Gea')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('17', 'Midfielder', 'Belgian', 'Eden', 'Hazard')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('23', 'Midfielder', 'Chileno', 'Arturo', 'Vidal')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('11', 'Forward', 'Welsh', 'Gareth', 'Bale')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('20', 'Forward', 'Dutch', 'Arjen', 'Robben')

INSERT INTO PLAYERS (PlayerID, Position, Nationality, FirstName,LastName)
VALUES ('8', 'Midfielder', 'Japanese', 'Keisuke', 'Honda')

INSERT INTO COACHES(CoachID, FirstName, LastName)
VALUES ('001', 'Carlo', 'Ancelotti')

INSERT INTO COACHES(CoachID, FirstName, LastName)
VALUES ('002', 'Pep', 'Guardiola')

INSERT INTO COACHES(CoachID, FirstName, LastName)
VALUES ('003', 'José', 'Mourinho')

INSERT INTO COACHES(CoachID, FirstName, LastName)
VALUES ('004', 'Héctor', 'Tapia')

INSERT INTO COACHES(CoachID, FirstName, LastName)
VALUES ('005', 'Greg', 'Vanney')

INSERT INTO COACHES(CoachID, FirstName, LastName)
VALUES ('006', 'Massimiliano', 'Allegri')

INSERT INTO COACHES(CoachID, FirstName, LastName)
VALUES ('007', 'Marcelo', 'Fernandes')

INSERT INTO TEAMS (TeamID, CoachID, TeamName,LeagueName)
VALUES ('1902', '001', 'Real Madrid CF','La Liga')

INSERT INTO TEAMS (TeamID, CoachID, TeamName,LeagueName)
VALUES ('1900', '002', 'FC Bayern Munich', 'Bundesliga')

INSERT INTO TEAMS (TeamID, CoachID, TeamName,LeagueName)
VALUES ('1905', '003', 'Chelsea FC', 'Premier League' )

INSERT INTO TEAMS (TeamID, CoachID, TeamName,LeagueName)
VALUES ('1925', '004', 'Colo Colo', 'Chilean Primera Division')

INSERT INTO TEAMS (TeamID, CoachID, TeamName,LeagueName)
VALUES ('2006', '005', 'Toronto FC', 'Major League Soccer')

INSERT INTO TEAMS (TeamID, CoachID, TeamName,LeagueName)
VALUES ('1897', '006', 'Juventus FC', 'Serie A')

INSERT INTO TEAMS (TeamID, CoachID, TeamName,LeagueName)
VALUES ('1912', '007', 'Santos FC', 'Campeonato Brasileiro')

INSERT INTO ROSTER(PlayerID, TeamID)
VALUES ('7','1902')

INSERT INTO ROSTER(PlayerID, TeamID)
VALUES ('9','1897')

INSERT INTO ROSTER(PlayerID, TeamID)
VALUES ('20','1900')

INSERT INTO ROSTER(PlayerID, TeamID)
VALUES ('17','1905')

INSERT INTO ROSTER(PlayerID, TeamID)
VALUES ('1', '1902')

INSERT INTO ROSTER(PlayerID, TeamID)
VALUES ('12', '1925')

INSERT INTO ROSTER(PlayerID, TeamID)
VALUES ('19', '1900')




