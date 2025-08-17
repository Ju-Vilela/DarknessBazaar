CREATE TABLE [dbo].[Items] (
    [IdItem]                INT IDENTITY(1,1)   PRIMARY KEY,
    [Name]                  NVARCHAR(100)       NOT NULL,
    [TypeItem]              NVARCHAR(50)        NOT NULL, -- Consumo, Estético, Defesa, Ataque, Especial
    [Rarity]                NVARCHAR(50)        NOT NULL DEFAULT 'Common',
    [Description]           NVARCHAR(500)       NULL,
    [BasePrice]             INT                 NOT NULL DEFAULT 0,
    [Image]                 NVARCHAR(255)       NULL,
    [Effect]                NVARCHAR(MAX)       NULL,
    [CreationDate]          DATETIME            NOT NULL DEFAULT GETDATE()
);
