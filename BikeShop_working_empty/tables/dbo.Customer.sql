CREATE TABLE [dbo].[Customer]
 (
 Cust_ID smallint IDENTITY (1,1) primary key NOT NULL,
    Cust_FirstName nvarchar(50) NULL,
	Cust_LastName nvarchar(50) NULL,
	Cust_CreditCard nvarchar(20) NULL,
	Cust_PIN nvarchar(4) NULL
	)