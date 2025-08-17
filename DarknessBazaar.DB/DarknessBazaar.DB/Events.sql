CREATE TABLE [dbo].[Events](
    [IdEvent]       INT IDENTITY(1,1)   PRIMARY KEY,
    [TypeEvent]     NVARCHAR(50)        NOT NULL, -- Roubo, Caçada, Derrota, Vitória, etc.
    [IdAuthorUser]  INT                 NULL FOREIGN KEY REFERENCES Users(IdUser), -- Quem iniciou/criou
    [MessageEvent]  NVARCHAR(500)       NOT NULL,
    [StartAt]       DATETIME            NOT NULL,
    [EndAt]         DATETIME            NOT NULL
);