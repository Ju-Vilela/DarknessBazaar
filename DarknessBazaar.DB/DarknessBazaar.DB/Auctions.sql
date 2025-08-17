CREATE TABLE [dbo].[Auctions] (
    [IdAuction]         INT IDENTITY(1,1)   PRIMARY KEY,
    [IdItem]            INT                 NOT NULL FOREIGN KEY REFERENCES Items(IdItem),
    [IdAuctioneer]      INT                 NOT NULL FOREIGN KEY REFERENCES Users(IdUser),
    [LowestBid]         INT                 NOT NULL DEFAULT 0,
    [HighestBid]        INT                 NOT NULL DEFAULT 0,
    [SuccessfulBidder]  INT                 NULL FOREIGN KEY REFERENCES Users(IdUser),
    [StartAt]           DATETIME            NOT NULL,
    [EndAt]             DATETIME            NOT NULL
);
