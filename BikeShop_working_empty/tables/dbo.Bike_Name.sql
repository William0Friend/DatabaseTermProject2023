CREATE TABLE [dbo].[Bike_Name]
(
	Bike_Name_ID smallint IDENTITY (1,1) primary key NOT NULL,
    Bike_Name nvarchar(50) NULL,
	Bike_Brand_ID smallint NULL,
	constraint fk_bike_name_Bike_Brand_Id
	foreign key (Bike_Brand_ID)
	references Bike_Brand (Bike_Brand_ID),
	Bike_Year nvarchar(50) NULL,
	Bike_Price nvarchar(50) NULL
	
)
