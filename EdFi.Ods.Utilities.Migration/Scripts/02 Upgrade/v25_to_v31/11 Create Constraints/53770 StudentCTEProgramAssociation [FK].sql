-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentCTEProgramAssociation]'
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociation] ADD CONSTRAINT [FK_StudentCTEProgramAssociation_GeneralStudentProgramAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[GeneralStudentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentCTEProgramAssociation] ADD CONSTRAINT [FK_StudentCTEProgramAssociation_TechnicalSkillsAssessmentDescriptor] FOREIGN KEY ([TechnicalSkillsAssessmentDescriptorId]) REFERENCES [edfi].[TechnicalSkillsAssessmentDescriptor] ([TechnicalSkillsAssessmentDescriptorId])
GO
