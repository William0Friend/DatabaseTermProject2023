use games;

Declare @x xml
select @x=G
--allows you to access remote data by connecting to a remote data source, such as a data file
from openrowset (Bulk 'D:\GitHub\DatabaseTermProject2023\XMLspring\XMLspring\games.xml', SINGLE_BLOB) as Games(G)

declare @hdoc int
--A built in stored procedure that returns handle to XML data
--@hdoc Document handle will be returned
EXEC sp_xml_preparedocument @hdoc OUTPUT, @x
--SELECT INTO statement is used to create a table by copying the existing table's columns, creates and populates the table MyGames with the data from the XML files
select *
into MyGames
--What will be processed, what the XML data looks like, look

From openxml (@hdoc, '/CATALOG/GAME', 2)
with (
		ID int,
		TITLE VARCHAR(30),
		DEVELOPER VARCHAR(30),
		RELEASEYEAR int,
		PRICE float
		)
exec sp_xml_removedocument @hdoc

select * from MyGames