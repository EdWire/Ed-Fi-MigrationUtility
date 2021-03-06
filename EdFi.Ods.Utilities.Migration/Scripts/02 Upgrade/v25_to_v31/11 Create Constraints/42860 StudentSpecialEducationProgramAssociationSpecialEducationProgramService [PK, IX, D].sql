-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSpecialEducationProgramAssociationSpecialEducationProgramService_PK] on [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationProgramService_PK] PRIMARY KEY CLUSTERED  ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [SpecialEducationProgramServiceDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation] on [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_StudentSpecialEducationProgramAssociation] ON [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] ([BeginDate], [EducationOrganizationId], [ProgramEducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId], [StudentUSI])
GO

PRINT N'Creating index [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_SpecialEducationProgramServiceDescriptor] on [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSpecialEducationProgramAssociationSpecialEducationProgramService_SpecialEducationProgramServiceDescriptor] ON [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] ([SpecialEducationProgramServiceDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService]'
GO
ALTER TABLE [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] ADD CONSTRAINT [StudentSpecialEducationProgramAssociationSpecialEducationProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
