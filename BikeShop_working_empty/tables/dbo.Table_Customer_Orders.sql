﻿CREATE TABLE [dbo].[Customer_Orders]
(
	Cust_Order_ID smallint IDENTITY (1,1) primary key NOT NULL,
    Cust_ID smallint NULL,
	constraint fk_inv_Cust_Id
	foreign key (Cust_ID)
	references Customer (Cust_ID),
	Store_ID smallint NULL,
	constraint fk_inv_Store_Id
	foreign key (Store_ID)
	references Store (Store_ID),
	Staff_ID smallint NULL,
	constraint fk_inv_Staff_Id
	foreign key (Staff_ID)
	references Staff (Staff_ID),
	Sale_Date nvarchar(50) NULL
	
)