
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/08/2017 08:40:33
-- Generated from EDMX file: C:\Users\kyled\Source\Repos\drwSurveys\Lefarge_FE_App\Models\drwdata.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [drwdata];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserClaims] DROP CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserLogins] DROP CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetRoles_RoleId];
GO
IF OBJECT_ID(N'[dbo].[FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[AspNetUserRoles] DROP CONSTRAINT [FK_dbo_AspNetUserRoles_dbo_AspNetUsers_UserId];
GO
IF OBJECT_ID(N'[dbo].[FK_Equipment_Plant_ID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Plant_ID];
GO
IF OBJECT_ID(N'[dbo].[FK_Equipment_Category_ID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Equipment] DROP CONSTRAINT [FK_Equipment_Category_ID];
GO
IF OBJECT_ID(N'[dbo].[FK_Headings_0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Headings] DROP CONSTRAINT [FK_Headings_0];
GO
IF OBJECT_ID(N'[dbo].[FK_Potential_Action_Plans_Category_ID]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Potential_Action_Plans] DROP CONSTRAINT [FK_Potential_Action_Plans_Category_ID];
GO
IF OBJECT_ID(N'[dbo].[FK_Potential_Deficiencies_0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Potential_Deficiencies] DROP CONSTRAINT [FK_Potential_Deficiencies_0];
GO
IF OBJECT_ID(N'[dbo].[FK_Questions_0]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Questions] DROP CONSTRAINT [FK_Questions_0];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[__MigrationHistory]', 'U') IS NOT NULL
    DROP TABLE [dbo].[__MigrationHistory];
GO
IF OBJECT_ID(N'[dbo].[Action_Plan]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Action_Plan];
GO
IF OBJECT_ID(N'[dbo].[AspNetRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserClaims]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserClaims];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserLogins]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserLogins];
GO
IF OBJECT_ID(N'[dbo].[AspNetUserRoles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUserRoles];
GO
IF OBJECT_ID(N'[dbo].[AspNetUsers]', 'U') IS NOT NULL
    DROP TABLE [dbo].[AspNetUsers];
GO
IF OBJECT_ID(N'[dbo].[Categories]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Categories];
GO
IF OBJECT_ID(N'[dbo].[Deficiencies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Deficiencies];
GO
IF OBJECT_ID(N'[dbo].[Equipment]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Equipment];
GO
IF OBJECT_ID(N'[dbo].[Headings]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Headings];
GO
IF OBJECT_ID(N'[dbo].[Pictures]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Pictures];
GO
IF OBJECT_ID(N'[dbo].[Plants]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Plants];
GO
IF OBJECT_ID(N'[dbo].[Potential_Action_Plans]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Potential_Action_Plans];
GO
IF OBJECT_ID(N'[dbo].[Potential_Deficiencies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Potential_Deficiencies];
GO
IF OBJECT_ID(N'[dbo].[Questions]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Questions];
GO
IF OBJECT_ID(N'[dbo].[Results]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Results];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'C__MigrationHistory'
CREATE TABLE [dbo].[C__MigrationHistory] (
    [MigrationId] nvarchar(150)  NOT NULL,
    [ContextKey] nvarchar(300)  NOT NULL,
    [Model] varbinary(max)  NOT NULL,
    [ProductVersion] nvarchar(32)  NOT NULL
);
GO

-- Creating table 'Action_Plan'
CREATE TABLE [dbo].[Action_Plan] (
    [Action_Plan_ID] int IDENTITY(1,1) NOT NULL,
    [Action_Plan1] nvarchar(50)  NOT NULL
);
GO

-- Creating table 'AspNetRoles'
CREATE TABLE [dbo].[AspNetRoles] (
    [Id] nvarchar(128)  NOT NULL,
    [Name] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'AspNetUserClaims'
CREATE TABLE [dbo].[AspNetUserClaims] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [UserId] nvarchar(128)  NOT NULL,
    [ClaimType] nvarchar(max)  NULL,
    [ClaimValue] nvarchar(max)  NULL
);
GO

-- Creating table 'AspNetUserLogins'
CREATE TABLE [dbo].[AspNetUserLogins] (
    [LoginProvider] nvarchar(128)  NOT NULL,
    [ProviderKey] nvarchar(128)  NOT NULL,
    [UserId] nvarchar(128)  NOT NULL
);
GO

-- Creating table 'AspNetUsers'
CREATE TABLE [dbo].[AspNetUsers] (
    [Id] nvarchar(128)  NOT NULL,
    [Email] nvarchar(256)  NULL,
    [EmailConfirmed] bit  NOT NULL,
    [PasswordHash] nvarchar(max)  NULL,
    [SecurityStamp] nvarchar(max)  NULL,
    [PhoneNumber] nvarchar(max)  NULL,
    [PhoneNumberConfirmed] bit  NOT NULL,
    [TwoFactorEnabled] bit  NOT NULL,
    [LockoutEndDateUtc] datetime  NULL,
    [LockoutEnabled] bit  NOT NULL,
    [AccessFailedCount] int  NOT NULL,
    [UserName] nvarchar(256)  NOT NULL
);
GO

-- Creating table 'Categories'
CREATE TABLE [dbo].[Categories] (
    [Category_ID] int IDENTITY(1,1) NOT NULL,
    [Category1] varchar(25)  NOT NULL
);
GO

-- Creating table 'Deficiencies'
CREATE TABLE [dbo].[Deficiencies] (
    [Deficiencies_ID] int IDENTITY(1,1) NOT NULL,
    [Deficiency1] varchar(50)  NOT NULL
);
GO

-- Creating table 'Equipments'
CREATE TABLE [dbo].[Equipments] (
    [Equipment_ID] int IDENTITY(1,1) NOT NULL,
    [Unit_Number] int  NOT NULL,
    [Name] varchar(100)  NOT NULL,
    [Description1] varchar(50)  NULL,
    [Num_Of_Belts] int  NULL,
    [Belt_Type] varchar(10)  NULL,
    [Plant_ID] int  NOT NULL,
    [Category_ID] int  NOT NULL
);
GO

-- Creating table 'Headings'
CREATE TABLE [dbo].[Headings] (
    [Heading_ID] int IDENTITY(1,1) NOT NULL,
    [Heading1] varchar(30)  NOT NULL,
    [Categories_Under] varchar(max)  NULL,
    [Category_ID] int  NULL
);
GO

-- Creating table 'Pictures'
CREATE TABLE [dbo].[Pictures] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [heading_ID] int  NULL,
    [equipment_ID] int  NULL,
    [name] varchar(250)  NULL,
    [question_ID] int  NULL,
    [URL] varchar(max)  NULL,
    [DateSubmited] datetime  NULL
);
GO

-- Creating table 'Plants'
CREATE TABLE [dbo].[Plants] (
    [Plant_ID] int IDENTITY(1,1) NOT NULL,
    [Plant_Name] varchar(20)  NOT NULL,
    [Address] varchar(50)  NULL,
    [Phone_Num] varchar(15)  NULL,
    [Postal_Code] varchar(7)  NULL,
    [City] varchar(15)  NOT NULL
);
GO

-- Creating table 'Potential_Action_Plans'
CREATE TABLE [dbo].[Potential_Action_Plans] (
    [Potential_Action_Plans_ID] int IDENTITY(1,1) NOT NULL,
    [Potential_Action_Plan] varchar(50)  NOT NULL,
    [Category_ID] int  NOT NULL
);
GO

-- Creating table 'Potential_Deficiencies'
CREATE TABLE [dbo].[Potential_Deficiencies] (
    [Deficiencies_ID] int IDENTITY(1,1) NOT NULL,
    [Deficiencies] varchar(50)  NOT NULL,
    [Category_ID] int  NOT NULL
);
GO

-- Creating table 'Questions'
CREATE TABLE [dbo].[Questions] (
    [Question_ID] int IDENTITY(1,1) NOT NULL,
    [Question1] nvarchar(250)  NOT NULL,
    [Category_ID] int  NOT NULL,
    [Headings_Under] varchar(max)  NULL
);
GO

-- Creating table 'Results'
CREATE TABLE [dbo].[Results] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Response] bit  NOT NULL,
    [Date_Completed] datetime  NOT NULL,
    [Question_ID] int  NOT NULL,
    [Action_plan] varchar(500)  NULL,
    [deficiency_defect] varchar(500)  NULL,
    [Equipment_ID] int  NOT NULL,
    [heading_ID] int  NOT NULL,
    [tempDate] datetime  NULL
);
GO

-- Creating table 'AspNetUserRoles'
CREATE TABLE [dbo].[AspNetUserRoles] (
    [AspNetRoles_Id] nvarchar(128)  NOT NULL,
    [AspNetUsers_Id] nvarchar(128)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [MigrationId], [ContextKey] in table 'C__MigrationHistory'
ALTER TABLE [dbo].[C__MigrationHistory]
ADD CONSTRAINT [PK_C__MigrationHistory]
    PRIMARY KEY CLUSTERED ([MigrationId], [ContextKey] ASC);
GO

-- Creating primary key on [Action_Plan_ID] in table 'Action_Plan'
ALTER TABLE [dbo].[Action_Plan]
ADD CONSTRAINT [PK_Action_Plan]
    PRIMARY KEY CLUSTERED ([Action_Plan_ID] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetRoles'
ALTER TABLE [dbo].[AspNetRoles]
ADD CONSTRAINT [PK_AspNetRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [PK_AspNetUserClaims]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [LoginProvider], [ProviderKey], [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [PK_AspNetUserLogins]
    PRIMARY KEY CLUSTERED ([LoginProvider], [ProviderKey], [UserId] ASC);
GO

-- Creating primary key on [Id] in table 'AspNetUsers'
ALTER TABLE [dbo].[AspNetUsers]
ADD CONSTRAINT [PK_AspNetUsers]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Category_ID] in table 'Categories'
ALTER TABLE [dbo].[Categories]
ADD CONSTRAINT [PK_Categories]
    PRIMARY KEY CLUSTERED ([Category_ID] ASC);
GO

-- Creating primary key on [Deficiencies_ID] in table 'Deficiencies'
ALTER TABLE [dbo].[Deficiencies]
ADD CONSTRAINT [PK_Deficiencies]
    PRIMARY KEY CLUSTERED ([Deficiencies_ID] ASC);
GO

-- Creating primary key on [Equipment_ID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [PK_Equipments]
    PRIMARY KEY CLUSTERED ([Equipment_ID] ASC);
GO

-- Creating primary key on [Heading_ID] in table 'Headings'
ALTER TABLE [dbo].[Headings]
ADD CONSTRAINT [PK_Headings]
    PRIMARY KEY CLUSTERED ([Heading_ID] ASC);
GO

-- Creating primary key on [ID] in table 'Pictures'
ALTER TABLE [dbo].[Pictures]
ADD CONSTRAINT [PK_Pictures]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [Plant_ID] in table 'Plants'
ALTER TABLE [dbo].[Plants]
ADD CONSTRAINT [PK_Plants]
    PRIMARY KEY CLUSTERED ([Plant_ID] ASC);
GO

-- Creating primary key on [Potential_Action_Plans_ID] in table 'Potential_Action_Plans'
ALTER TABLE [dbo].[Potential_Action_Plans]
ADD CONSTRAINT [PK_Potential_Action_Plans]
    PRIMARY KEY CLUSTERED ([Potential_Action_Plans_ID] ASC);
GO

-- Creating primary key on [Deficiencies_ID] in table 'Potential_Deficiencies'
ALTER TABLE [dbo].[Potential_Deficiencies]
ADD CONSTRAINT [PK_Potential_Deficiencies]
    PRIMARY KEY CLUSTERED ([Deficiencies_ID] ASC);
GO

-- Creating primary key on [Question_ID] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [PK_Questions]
    PRIMARY KEY CLUSTERED ([Question_ID] ASC);
GO

-- Creating primary key on [ID] in table 'Results'
ALTER TABLE [dbo].[Results]
ADD CONSTRAINT [PK_Results]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [AspNetRoles_Id], [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [PK_AspNetUserRoles]
    PRIMARY KEY CLUSTERED ([AspNetRoles_Id], [AspNetUsers_Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [UserId] in table 'AspNetUserClaims'
ALTER TABLE [dbo].[AspNetUserClaims]
ADD CONSTRAINT [FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserClaims_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserClaims]
    ([UserId]);
GO

-- Creating foreign key on [UserId] in table 'AspNetUserLogins'
ALTER TABLE [dbo].[AspNetUserLogins]
ADD CONSTRAINT [FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
    FOREIGN KEY ([UserId])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId'
CREATE INDEX [IX_FK_dbo_AspNetUserLogins_dbo_AspNetUsers_UserId]
ON [dbo].[AspNetUserLogins]
    ([UserId]);
GO

-- Creating foreign key on [Category_ID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [FK_Equipment_Category_ID]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Categories]
        ([Category_ID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Equipment_Category_ID'
CREATE INDEX [IX_FK_Equipment_Category_ID]
ON [dbo].[Equipments]
    ([Category_ID]);
GO

-- Creating foreign key on [Category_ID] in table 'Headings'
ALTER TABLE [dbo].[Headings]
ADD CONSTRAINT [FK_Headings_0]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Categories]
        ([Category_ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Headings_0'
CREATE INDEX [IX_FK_Headings_0]
ON [dbo].[Headings]
    ([Category_ID]);
GO

-- Creating foreign key on [Category_ID] in table 'Potential_Action_Plans'
ALTER TABLE [dbo].[Potential_Action_Plans]
ADD CONSTRAINT [FK_Potential_Action_Plans_Category_ID]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Categories]
        ([Category_ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Potential_Action_Plans_Category_ID'
CREATE INDEX [IX_FK_Potential_Action_Plans_Category_ID]
ON [dbo].[Potential_Action_Plans]
    ([Category_ID]);
GO

-- Creating foreign key on [Category_ID] in table 'Potential_Deficiencies'
ALTER TABLE [dbo].[Potential_Deficiencies]
ADD CONSTRAINT [FK_Potential_Deficiencies_0]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Categories]
        ([Category_ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Potential_Deficiencies_0'
CREATE INDEX [IX_FK_Potential_Deficiencies_0]
ON [dbo].[Potential_Deficiencies]
    ([Category_ID]);
GO

-- Creating foreign key on [Category_ID] in table 'Questions'
ALTER TABLE [dbo].[Questions]
ADD CONSTRAINT [FK_Questions_0]
    FOREIGN KEY ([Category_ID])
    REFERENCES [dbo].[Categories]
        ([Category_ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Questions_0'
CREATE INDEX [IX_FK_Questions_0]
ON [dbo].[Questions]
    ([Category_ID]);
GO

-- Creating foreign key on [Plant_ID] in table 'Equipments'
ALTER TABLE [dbo].[Equipments]
ADD CONSTRAINT [FK_Equipment_Plant_ID]
    FOREIGN KEY ([Plant_ID])
    REFERENCES [dbo].[Plants]
        ([Plant_ID])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Equipment_Plant_ID'
CREATE INDEX [IX_FK_Equipment_Plant_ID]
ON [dbo].[Equipments]
    ([Plant_ID]);
GO

-- Creating foreign key on [AspNetRoles_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetRoles]
    FOREIGN KEY ([AspNetRoles_Id])
    REFERENCES [dbo].[AspNetRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AspNetUsers_Id] in table 'AspNetUserRoles'
ALTER TABLE [dbo].[AspNetUserRoles]
ADD CONSTRAINT [FK_AspNetUserRoles_AspNetUsers]
    FOREIGN KEY ([AspNetUsers_Id])
    REFERENCES [dbo].[AspNetUsers]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_AspNetUserRoles_AspNetUsers'
CREATE INDEX [IX_FK_AspNetUserRoles_AspNetUsers]
ON [dbo].[AspNetUserRoles]
    ([AspNetUsers_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------