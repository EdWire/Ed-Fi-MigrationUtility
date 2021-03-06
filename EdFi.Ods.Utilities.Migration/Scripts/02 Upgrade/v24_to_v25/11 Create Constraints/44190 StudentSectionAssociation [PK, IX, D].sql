-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [StudentSectionAssociation_PK] on [edfi].[StudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [StudentSectionAssociation_PK] PRIMARY KEY CLUSTERED  ([StudentUSI], [SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [UniqueSectionCode], [SequenceOfCourse], [SchoolYear], [TermDescriptorId], [BeginDate])
GO
PRINT N'Creating index [UX_StudentSectionAssociation_Id] on [edfi].[StudentSectionAssociation]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_StudentSectionAssociation_Id] ON [edfi].[StudentSectionAssociation] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_StudentSectionAssociation_RepeatIdentifierType] on [edfi].[StudentSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_RepeatIdentifierType] ON [edfi].[StudentSectionAssociation] ([RepeatIdentifierTypeId])
GO
PRINT N'Creating index [FK_StudentSectionAssociation_Section] on [edfi].[StudentSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_Section] ON [edfi].[StudentSectionAssociation] ([SchoolId], [ClassPeriodName], [ClassroomIdentificationCode], [LocalCourseCode], [TermDescriptorId], [SchoolYear], [UniqueSectionCode], [SequenceOfCourse])
GO
PRINT N'Creating index [FK_StudentSectionAssociation_Student] on [edfi].[StudentSectionAssociation]'
GO
CREATE NONCLUSTERED INDEX [FK_StudentSectionAssociation_Student] ON [edfi].[StudentSectionAssociation] ([StudentUSI])
GO

PRINT N'Adding constraints to [edfi].[StudentSectionAssociation]'
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [StudentSectionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [StudentSectionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[StudentSectionAssociation] ADD CONSTRAINT [StudentSectionAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO

