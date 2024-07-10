-- Create the TEST database
CREATE DATABASE TEST;
GO

-- Switch to the TEST database
USE TEST;
GO

-- Create the TEST_TABLE with columns ID1 and ID2
CREATE TABLE TEST_TABLE (
    ID1 INT PRIMARY KEY,
    ID2 NVARCHAR(50)
);
GO