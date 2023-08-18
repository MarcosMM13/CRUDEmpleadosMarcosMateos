USE master	

IF NOT EXISTS (SELECT * FROM sys.databases WHERE name = N'EvoltisPruebaTec')
BEGIN
    CREATE DATABASE EvoltisPruebaTec;
    PRINT 'Database EvoltisPruebaTec created.';
END
ELSE
BEGIN
    PRINT 'Database EvoltisPruebaTec already exists.';
END
GO

USE EvoltisPruebaTec
GO

IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Employees]') AND type in (N'U'))
BEGIN
	CREATE TABLE Eployees(
	IdEmployee int PRIMARY KEY IDENTITY(1,1) NOT NULL,
	Employee_Name nvarchar(50) NULL,
	Employee_LastName nvarchar(50) NULL,
	Employee_Email nvarchar(MAX) NULL,
	Employee_Salary decimal(18,2) NULL)
END
GO
