CREATE TABLE [dbo].[Product]
(
	[Product_Id] VARCHAR(50) NOT NULL PRIMARY KEY DEFAULT -99, 
    [Product_Name] VARCHAR(50) NOT NULL DEFAULT -99, 
    [Product_Brand] VARCHAR(50) NOT NULL DEFAULT -99, 
    [Product_Category] VARCHAR(50) NOT NULL DEFAULT -99, 
    [Product_Model] VARCHAR(50) NOT NULL DEFAULT -99, 
    [Product_Year] VARCHAR(50) NOT NULL DEFAULT -99, 
    [Product_ListPrice] VARCHAR(50) NOT NULL DEFAULT -99
)
