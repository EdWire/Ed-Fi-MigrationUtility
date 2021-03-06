-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[GradebookEntryLearningStandard]'
GO
ALTER TABLE [edfi].[GradebookEntryLearningStandard] ADD CONSTRAINT [FK_GradebookEntryLearningStandard_GradebookEntry] FOREIGN KEY ([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned]) REFERENCES [edfi].[GradebookEntry] ([GradebookEntryTitle], [ClassroomIdentificationCode], [SchoolId], [ClassPeriodName], [LocalCourseCode], [SchoolYear], [TermDescriptorId], [UniqueSectionCode], [SequenceOfCourse], [DateAssigned]) ON DELETE CASCADE ON UPDATE CASCADE
GO
ALTER TABLE [edfi].[GradebookEntryLearningStandard] ADD CONSTRAINT [FK_GradebookEntryLearningStandard_LearningStandard] FOREIGN KEY ([LearningStandardId]) REFERENCES [edfi].[LearningStandard] ([LearningStandardId])
GO
