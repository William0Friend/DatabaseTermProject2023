CREATE TABLE [dbo].[Cust_Item]
(
	Cust_Order_ID smallint IDENTITY (1,1) primary key NOT NULL,
	Bike_Name_ID smallint NULL,
	constraint fk_cust_order_Bike_Name_Id
	foreign key (Bike_Name_ID)
	references Bike_Name (Bike_Name_ID),
	Bike_Quantity int NULL,
	Store_ID smallint NULL,
	constraint fk_cust_order_Store_Id
	foreign key (Store_ID)
	references Store (Store_ID)
)
