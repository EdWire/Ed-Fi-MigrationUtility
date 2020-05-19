-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentHomelessProgramAssociation]'
GO

CREATE TABLE [edfi].[StudentHomelessProgramAssociation]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[ProgramEducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[StudentUSI] [int] NOT NULL,
[HomelessPrimaryNighttimeResidenceDescriptorId] [int] NULL,
[AwaitingFosterCare] [bit] NULL,
[HomelessUnaccompaniedYouth] [bit] NULL
)
GO
