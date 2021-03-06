-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LearningStandard_PK] on [edfi].[LearningStandard]'
GO
ALTER TABLE [edfi].[LearningStandard] ADD CONSTRAINT [LearningStandard_PK] PRIMARY KEY CLUSTERED  ([LearningStandardId])
GO

PRINT N'Creating index [UX_LearningStandard_Id] on [edfi].[LearningStandard]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_LearningStandard_Id] ON [edfi].[LearningStandard] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO

PRINT N'Creating index [FK_LearningStandard_LearningStandardCategoryDescriptor] on [edfi].[LearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandard_LearningStandardCategoryDescriptor] ON [edfi].[LearningStandard] ([LearningStandardCategoryDescriptorId])
GO

PRINT N'Creating index [FK_LearningStandard_LearningStandard] on [edfi].[LearningStandard]'
GO
CREATE NONCLUSTERED INDEX [FK_LearningStandard_LearningStandard] ON [edfi].[LearningStandard] ([ParentLearningStandardId])
GO

PRINT N'Adding constraints to [edfi].[LearningStandard]'
GO
ALTER TABLE [edfi].[LearningStandard] ADD CONSTRAINT [LearningStandard_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[LearningStandard] ADD CONSTRAINT [LearningStandard_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[LearningStandard] ADD CONSTRAINT [LearningStandard_DF_Id] DEFAULT (newid()) FOR [Id]
GO
