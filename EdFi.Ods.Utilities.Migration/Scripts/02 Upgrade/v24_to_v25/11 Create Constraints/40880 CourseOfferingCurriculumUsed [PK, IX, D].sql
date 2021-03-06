-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseOfferingCurriculumUsed_PK] on [edfi].[CourseOfferingCurriculumUsed]'
GO
ALTER TABLE [edfi].[CourseOfferingCurriculumUsed] ADD CONSTRAINT [CourseOfferingCurriculumUsed_PK] PRIMARY KEY CLUSTERED  ([SchoolId], [SchoolYear], [LocalCourseCode], [CurriculumUsedTypeId], [TermDescriptorId])
GO
PRINT N'Creating index [FK_CourseOfferingCurriculumUsed_CurriculumUsedType] on [edfi].[CourseOfferingCurriculumUsed]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOfferingCurriculumUsed_CurriculumUsedType] ON [edfi].[CourseOfferingCurriculumUsed] ([CurriculumUsedTypeId])
GO
PRINT N'Creating index [FK_CourseOfferingCurriculumUsed_CourseOffering] on [edfi].[CourseOfferingCurriculumUsed]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseOfferingCurriculumUsed_CourseOffering] ON [edfi].[CourseOfferingCurriculumUsed] ([LocalCourseCode], [SchoolId], [SchoolYear], [TermDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CourseOfferingCurriculumUsed]'
GO
ALTER TABLE [edfi].[CourseOfferingCurriculumUsed] ADD CONSTRAINT [CourseOfferingCurriculumUsed_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

