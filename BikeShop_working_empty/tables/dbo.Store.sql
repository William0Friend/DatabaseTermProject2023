CREATE TABLE [dbo].[Store]
(
	Store_ID smallint IDENTITY (1,1) primary key NOT NULL,
    Store_Name nvarchar(50) NULL,
	Store_Phone nvarchar(10) NULL
)
