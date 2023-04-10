create database bikeshop

CREATE TABLE [dbo].[Bike_Catagory] (
    [Bike_Catagory_ID]   SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Bike_Catagory_Name] NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Bike_Catagory_ID] ASC)
);

CREATE TABLE [dbo].[Bike_Name] (
    [Bike_Name_ID]  SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Bike_Name]     NVARCHAR (50) NULL,
    [Bike_Brand_ID] SMALLINT      NULL,
    [Bike_Year]     NVARCHAR (50) NULL,
    [Bike_Price]    NVARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([Bike_Name_ID] ASC),
    CONSTRAINT [fk_bike_name_Bike_Brand_Id] FOREIGN KEY ([Bike_Brand_ID]) REFERENCES [dbo].[Bike_Brand] ([Bike_Brand_ID])
);

CREATE TABLE [dbo].[Customer] (
    [Cust_ID]         SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Cust_FirstName]  NVARCHAR (50) NULL,
    [Cust_LastName]   NVARCHAR (50) NULL,
	[Cust_FullName]   NVARCHAR (100) NULL,
    [Cust_CreditCard] NVARCHAR (20) NULL,
    [Cust_PIN]        NVARCHAR (4)  NULL,
    PRIMARY KEY CLUSTERED ([Cust_ID] ASC)
);

CREATE TABLE [dbo].[Customer_Orders] (
    [Cust_Order_ID] SMALLINT IDENTITY (1, 1) NOT NULL,
    [Cust_ID]       SMALLINT NULL,
    [Store_ID]      SMALLINT NULL,
    [Staff_ID]      SMALLINT NULL,
    [Sale_Date]     DATE     NULL,
    PRIMARY KEY CLUSTERED ([Cust_Order_ID] ASC),
    CONSTRAINT [fk_cust_orders_Cust_Id] FOREIGN KEY ([Cust_ID]) REFERENCES [dbo].[Customer] ([Cust_ID]),
    CONSTRAINT [fk_cust_orders_Staff_Id] FOREIGN KEY ([Staff_ID]) REFERENCES [dbo].[Staff] ([Staff_ID]),
    CONSTRAINT [fk_cust_orders_Store_Id] FOREIGN KEY ([Store_ID]) REFERENCES [dbo].[Store] ([Store_ID])
);

CREATE TABLE [dbo].[Staff] (
    [Staff_ID]        SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Staff_FirstName] NVARCHAR (50) NULL,
    [Staff_LastName]  NVARCHAR (50) NULL,
    [Staff_FullName] NVARCHAR(100) NULL, 
    [IsManager] BIT NOT NULL DEFAULT 0, 
    PRIMARY KEY CLUSTERED ([Staff_ID] ASC)
);


CREATE TABLE [dbo].[Store] (
    [Store_ID]    SMALLINT      IDENTITY (1, 1) NOT NULL,
    [Store_Name]  NVARCHAR (50) NULL,
    [Store_Phone] NVARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([Store_ID] ASC)
);

"""

---trigger to reset identity(1,1) on deletions
CREATE TRIGGER ResetIdentityValues
ON <TABLE>
AFTER DELETE
AS
BEGIN
   SET NOCOUNT ON;

   DECLARE @MaxId int;
   SELECT @MaxId = MAX(<Primary key ie BlankID>) FROM <Table>;

   DBCC CHECKIDENT ('<TABLE>', RESEED, @MaxId);
END;

"""