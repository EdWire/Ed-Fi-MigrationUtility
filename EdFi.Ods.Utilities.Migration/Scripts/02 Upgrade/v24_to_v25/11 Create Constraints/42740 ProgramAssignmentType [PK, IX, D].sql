-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [ProgramAssignmentType_PK] on [edfi].[ProgramAssignmentType]'
GO
ALTER TABLE [edfi].[ProgramAssignmentType] ADD CONSTRAINT [ProgramAssignmentType_PK] PRIMARY KEY CLUSTERED  ([ProgramAssignmentTypeId])
GO
PRINT N'Creating index [UX_ProgramAssignmentType_Id] on [edfi].[ProgramAssignmentType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_ProgramAssignmentType_Id] ON [edfi].[ProgramAssignmentType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[ProgramAssignmentType]'
GO
ALTER TABLE [edfi].[ProgramAssignmentType] ADD CONSTRAINT [ProgramAssignmentType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[ProgramAssignmentType] ADD CONSTRAINT [ProgramAssignmentType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[ProgramAssignmentType] ADD CONSTRAINT [ProgramAssignmentType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

