-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Updating LearningObjective key references in [edfi].[CourseLearningObjective]'
GO

ALTER TABLE [edfi].[CourseLearningObjective]
ADD
	[LearningObjectiveId] [nvarchar] (60) NULL,
	[Namespace] [nvarchar] (255) NULL
GO

UPDATE [edfi].[CourseLearningObjective]
SET
	[LearningObjectiveId] = m.[LearningObjectiveId],
	[Namespace] = m.[Namespace]
FROM [edfi].[CourseLearningObjective] o
INNER JOIN [migration_tempdata].[LearningObjectiveIdentityMapping] m
ON o.[Objective] = m.[Objective]
	AND o.[AcademicSubjectDescriptorId] = m.[AcademicSubjectDescriptorId]
	AND o.[ObjectiveGradeLevelDescriptorId] = m.[ObjectiveGradeLevelDescriptorId]
GO

ALTER TABLE [edfi].[CourseLearningObjective]
ALTER COLUMN [LearningObjectiveId] [nvarchar] (60) NOT NULL
GO

ALTER TABLE [edfi].[CourseLearningObjective]
ALTER COLUMN [Namespace] [nvarchar] (255) NOT NULL
GO

ALTER TABLE [edfi].[CourseLearningObjective] DROP
	COLUMN [Objective],
	COLUMN [ObjectiveGradeLevelDescriptorId],
	COLUMN [AcademicSubjectDescriptorId]
GO
