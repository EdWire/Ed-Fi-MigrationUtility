-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment]'
GO

CREATE TABLE [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment]
(
[BeginDate] [date] NOT NULL,
[EducationOrganizationId] [int] NOT NULL,
[ProgramEducationOrganizationId] [int] NOT NULL,
[ProgramName] [nvarchar] (60) NOT NULL,
[ProgramTypeDescriptorId] [int] NOT NULL,
[SchoolYear] [smallint] NOT NULL,
[StudentUSI] [int] NOT NULL,
[ParticipationDescriptorId] [int] NULL,
[ProficiencyDescriptorId] [int] NULL,
[ProgressDescriptorId] [int] NULL,
[MonitoredDescriptorId] [int] NULL,
[CreateDate] [datetime] NOT NULL
)
GO
