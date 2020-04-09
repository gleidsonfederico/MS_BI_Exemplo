﻿/*
Deployment script for DW_SUCOS

This code was generated by a tool.
Changes to this file may cause incorrect behavior and will be lost if
the code is regenerated.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "DW_SUCOS"
:setvar DefaultFilePrefix "DW_SUCOS"
:setvar DefaultDataPath "D:\SqlErver2019\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\"
:setvar DefaultLogPath "D:\SqlErver2019\MSSQL15.MSSQLSERVER2019\MSSQL\DATA\"

GO
:on error exit
GO
/*
Detect SQLCMD mode and disable script execution if SQLCMD mode is not supported.
To re-enable the script after enabling SQLCMD mode, execute the following:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'SQLCMD mode must be enabled to successfully execute this script.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Rename refactoring operation with key 257bc3c6-a968-4cfd-9c39-4c508d886020 is skipped, element [dbo].[DIM_Organizacional].[Id] (SqlSimpleColumn) will not be renamed to Cod_Filho';


GO
PRINT N'Creating [dbo].[DIM_Organizacional]...';


GO
CREATE TABLE [dbo].[DIM_Organizacional] (
    [Cod_Filho]  NVARCHAR (50)  NOT NULL,
    [Desc_Filho] NVARCHAR (200) NULL,
    [Cod_Pai]    NVARCHAR (50)  NULL,
    [Esquerda]   INT            NULL,
    [Direita]    INT            NULL,
    [Nivel]      INT            NULL,
    PRIMARY KEY CLUSTERED ([Cod_Filho] ASC)
);


GO
PRINT N'Creating [dbo].[FK_DIM_Organizacional_DIM_Organizacional]...';


GO
ALTER TABLE [dbo].[DIM_Organizacional] WITH NOCHECK
    ADD CONSTRAINT [FK_DIM_Organizacional_DIM_Organizacional] FOREIGN KEY ([Cod_Pai]) REFERENCES [dbo].[DIM_Organizacional] ([Cod_Filho]);


GO
-- Refactoring step to update target server with deployed transaction logs
IF NOT EXISTS (SELECT OperationKey FROM [dbo].[__RefactorLog] WHERE OperationKey = '257bc3c6-a968-4cfd-9c39-4c508d886020')
INSERT INTO [dbo].[__RefactorLog] (OperationKey) values ('257bc3c6-a968-4cfd-9c39-4c508d886020')

GO

GO
PRINT N'Checking existing data against newly created constraints';


GO
USE [$(DatabaseName)];


GO
ALTER TABLE [dbo].[DIM_Organizacional] WITH CHECK CHECK CONSTRAINT [FK_DIM_Organizacional_DIM_Organizacional];


GO
PRINT N'Update complete.';


GO
