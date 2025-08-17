CREATE TABLE [dbo].[Transactions](
    [IdTransaction]     INT IDENTITY(1,1)   PRIMARY KEY,
    [IdUser]            INT                 NOT NULL FOREIGN KEY REFERENCES Users(IdUser),
    [TypeTransaction]   NVARCHAR(50)        NOT NULL, -- Compra, Venda, Roubo, Leilao, Aposta
    [IdItem]            INT                 NULL FOREIGN KEY REFERENCES Items(IdItem),
    [IdTargetUser]      INT                 NULL FOREIGN KEY REFERENCES Users(IdUser),
    [Status]            NVARCHAR(20)        NOT NULL DEFAULT 'Completed', -- Ex: Pending, Completed, Failed
    [Quantity]          INT                 NOT NULL DEFAULT 1,
    [Value]             INT                 NOT NULL DEFAULT 0,
    [TransactionDate]   DATETIME            NOT NULL DEFAULT GETDATE(),
    [UpdateAt]          DATETIME            NULL
);