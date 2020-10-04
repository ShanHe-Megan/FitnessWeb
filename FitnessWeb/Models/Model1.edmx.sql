
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/04/2020 23:26:55
-- Generated from EDMX file: C:\Users\Megan\source\repos\FitnessWeb\FitnessWeb\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [aspnet-FitnessWeb-20201004013240];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [userId] int IDENTITY(1,1) NOT NULL,
    [userFirstName] nvarchar(max)  NOT NULL,
    [userLastName] nvarchar(max)  NOT NULL,
    [userEmail] nvarchar(max)  NOT NULL,
    [userPhone] nvarchar(max)  NOT NULL,
    [userAddress] nvarchar(max)  NOT NULL,
    [userType] nvarchar(max)  NOT NULL,
    [User_userId] int  NOT NULL
);
GO

-- Creating table 'Classes'
CREATE TABLE [dbo].[Classes] (
    [classId] int IDENTITY(1,1) NOT NULL,
    [className] nvarchar(max)  NOT NULL,
    [classCoach] nvarchar(max)  NOT NULL,
    [classDate] nvarchar(max)  NOT NULL,
    [classLocation] nvarchar(max)  NOT NULL,
    [User_userId] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [userId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([userId] ASC);
GO

-- Creating primary key on [classId] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [PK_Classes]
    PRIMARY KEY CLUSTERED ([classId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [User_userId] in table 'Classes'
ALTER TABLE [dbo].[Classes]
ADD CONSTRAINT [FK_UserClass]
    FOREIGN KEY ([User_userId])
    REFERENCES [dbo].[Users]
        ([userId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_UserClass'
CREATE INDEX [IX_FK_UserClass]
ON [dbo].[Classes]
    ([User_userId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------