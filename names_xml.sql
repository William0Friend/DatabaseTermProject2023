DECLARE @x xml
  
  SELECT @x=G
  FROM OPENROWSET (BULK 'D:\GitHub\DatabaseTermProject2023\XMLspring\XMLspring\names.xml', SINGLE_BLOB) AS Names(G)

  DECLARE @hdoc int

  EXEC sp_xml_preparedocument @hdoc OUTPUT, @x 

  SELECT *
  INTO Names
  FROM OPENXML (@hdoc, '/ALLNAMES/NAME', 2)
  WITH (
		FIRSTNAME VARCHAR(30),
		LASTNAME VARCHAR(30)
)

  EXEC sp_xml_removedocument @hdoc
  
  SELECT * FROM Names
