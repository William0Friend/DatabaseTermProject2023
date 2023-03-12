CREATE TABLE [dbo].[Customers]
(
	[cus_Id] INT NOT NULL PRIMARY KEY DEFAULT -99, 
    [cus_first_name] VARCHAR(50) NOT NULL DEFAULT -99, 
    [cus_last_name] VARCHAR(50) NOT NULL DEFAULT -99
)
