CREATE TABLE [dbo].[Table]
(
	[Cus_ID] BIGINT NOT NULL PRIMARY KEY DEFAULT -99, 
    [First_Name] NCHAR(50) NULL DEFAULT x, 
    [Last_Name] NCHAR(50) NULL DEFAULT x, 
    [Credit_Card] INT NULL DEFAULT -99, 
    [Phone] NCHAR(10) NULL DEFAULT x, 
    [Email] NCHAR(10) NULL DEFAULT x, 
    [Street] NCHAR(10) NULL DEFAULT x, 
    [city] NCHAR(10) NULL DEFAULT x, 
    [state] NCHAR(10) NULL DEFAULT x, 
    [zip_code] INT NULL DEFAULT x 
	
)
