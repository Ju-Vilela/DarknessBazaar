CREATE TABLE [dbo].[Users]
(
	[IdUser]            INT IDENTITY(1,1)   PRIMARY KEY,
    [Nickname]          NVARCHAR(50)        NOT NULL,
    [Password]          NVARCHAR(256)       NOT NULL,
    [Email]             NVARCHAR(100)       NOT NULL,
    [Balance]           INT                 NOT NULL DEFAULT 0,
    [Reputation]        INT                 NOT NULL DEFAULT 0,
    [Inventory]         NVARCHAR(MAX)       NULL,
    [CreationDate]      DATETIME            NOT NULL DEFAULT GETDATE()
)
