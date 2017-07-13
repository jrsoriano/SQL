USE Futbol

CREATE UNIQUE INDEX IDX_ForeignKeys
ON ROSTER (PlayerID,TeamID)

CREATE INDEX IDX_TeamCoach
ON TEAMS (CoachID)

CREATE INDEX IDX_PlayerPosition
ON PLAYERS (Position)