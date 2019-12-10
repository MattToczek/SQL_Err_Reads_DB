CREATE TABLE Error_Reads(
Error_Code int PRIMARY KEY,
Summary varchar(200),
Fix varchar(200));

INSERT INTO Error_Reads
(Error_Code, Summary, Fix)
VALUES (1054, "Unknown column [column_name] in 'where clause'", "Typo in column name"),
(1064, "You have an error in your SQL syntax...", "Using incorrect keyword"),
(1146, "Table '[table name with dot notation root]' doesn't exist", "Incorrect tablename or path" ),
(1050, "Table [table_name] already exists", "Not commented out the CREATE TABLE statement in code"),
(1170, "BLOB/TEXT column '[column_name]' used in key spec...", "Keyword TEXT used instead of varchar([num])"),
(1292, "Truncated incorrect DOUBLE value: '[name]'", "Using numerical value to refer to column without keyword"),
(1062, "Duplicate entry '[value]' for key 'PRIMARY'", "Duplicating a value within the PRIMARY column"),
(1175, "You are using safe update mode and you tried...", "Not identifying value by KEY value - can turn off safe mode OR identify value via primary column value"),
(1051, "Unknown table '[table_root.table_name]'", "CREATE TABLE statement did not execute");

SELECT * 
FROM Error_Reads;