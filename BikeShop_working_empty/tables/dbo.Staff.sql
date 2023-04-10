CREATE TABLE [dbo].[Staff] (
    [Staff_ID]        SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Staff_FirstName] NVARCHAR (50) NULL,
    [Staff_LastName]  NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Staff_ID] ASC)
);

