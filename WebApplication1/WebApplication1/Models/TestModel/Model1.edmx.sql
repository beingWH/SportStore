
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 04/19/2017 08:36:22
-- Generated from EDMX file: C:\Users\wanghuan\Source\Repos\FORLC\WebApplication1\WebApplication1\Models\TestModel\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Test];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[TEST]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TEST];
GO
IF OBJECT_ID(N'[dbo].[TESTAGE]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TESTAGE];
GO
IF OBJECT_ID(N'[dbo].[TESTCLASS]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TESTCLASS];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'TEST'
CREATE TABLE [dbo].[TEST] (
    [ID] bigint  NOT NULL,
    [NAME] nchar(10)  NULL,
    [PASSWORD] nchar(10)  NULL
);
GO

-- Creating table 'TESTCLASS'
CREATE TABLE [dbo].[TESTCLASS] (
    [ID] bigint  NOT NULL,
    [CLASS] nchar(10)  NULL,
    [NAME] nchar(10)  NULL,
    [TESTID] bigint  NOT NULL
);
GO

-- Creating table 'TESTAGE'
CREATE TABLE [dbo].[TESTAGE] (
    [ID] bigint  NOT NULL,
    [NAME] nchar(10)  NULL,
    [AGE] nchar(10)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'TEST'
ALTER TABLE [dbo].[TEST]
ADD CONSTRAINT [PK_TEST]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TESTCLASS'
ALTER TABLE [dbo].[TESTCLASS]
ADD CONSTRAINT [PK_TESTCLASS]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'TESTAGE'
ALTER TABLE [dbo].[TESTAGE]
ADD CONSTRAINT [PK_TESTAGE]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------