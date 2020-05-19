-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningObjectiveAcademicSubject_PK] on [edfi].[LearningObjectiveAcademicSubject]'
GO
ALTER TABLE [edfi].[LearningObjectiveAcademicSubject] ADD CONSTRAINT [LearningObjectiveAcademicSubject_PK] PRIMARY KEY CLUSTERED  ([AcademicSubjectDescriptorId], [LearningObjectiveId], [Namespace])
GO

PRINT N'Creating index [FK_LearningObjectiveAcademicSubject_AcademicSubjectDescriptor] on [edfi].[LearningObjectiveAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveAcademicSubject_AcademicSubjectDescriptor] ON [edfi].[LearningObjectiveAcademicSubject] ([AcademicSubjectDescriptorId])
GO

PRINT N'Creating index [FK_LearningObjectiveAcademicSubject_LearningObjective] on [edfi].[LearningObjectiveAcademicSubject]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningObjectiveAcademicSubject_LearningObjective] ON [edfi].[LearningObjectiveAcademicSubject] ([LearningObjectiveId], [Namespace])
GO

PRINT N'Adding constraints to [edfi].[LearningObjectiveAcademicSubject]'
GO
ALTER TABLE [edfi].[LearningObjectiveAcademicSubject] ADD CONSTRAINT [LearningObjectiveAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
