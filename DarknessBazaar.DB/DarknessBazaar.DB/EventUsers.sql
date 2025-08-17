CREATE TABLE [dbo].[EventUsers] (
    [IdEvent] INT           NOT NULL FOREIGN KEY REFERENCES Events(IdEvent),
    [IdUser]  INT           NOT NULL FOREIGN KEY REFERENCES Users(IdUser),
    [Status]  NVARCHAR(20)  NULL,  -- Ex: Pending, Completed, Failed
    PRIMARY KEY (IdEvent, IdUser)
);