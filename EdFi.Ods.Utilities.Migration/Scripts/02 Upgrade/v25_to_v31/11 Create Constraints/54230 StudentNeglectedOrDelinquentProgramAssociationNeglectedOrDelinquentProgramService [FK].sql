-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService]'
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] ADD CONSTRAINT [FK_StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_NeglectedOrDelinquentProgramServiceDescript] FOREIGN KEY ([NeglectedOrDelinquentProgramServiceDescriptorId]) REFERENCES [edfi].[NeglectedOrDelinquentProgramServiceDescriptor] ([NeglectedOrDelinquentProgramServiceDescriptorId])
GO
ALTER TABLE [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] ADD CONSTRAINT [FK_StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService_StudentNeglectedOrDelinquentProgramAssociat] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) REFERENCES [edfi].[StudentNeglectedOrDelinquentProgramAssociation] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI]) ON DELETE CASCADE
GO
