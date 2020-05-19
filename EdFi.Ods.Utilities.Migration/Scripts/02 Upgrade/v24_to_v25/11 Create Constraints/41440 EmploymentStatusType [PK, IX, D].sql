-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [EmploymentStatusType_PK] on [edfi].[EmploymentStatusType]'
GO
ALTER TABLE [edfi].[EmploymentStatusType] ADD CONSTRAINT [EmploymentStatusType_PK] PRIMARY KEY CLUSTERED  ([EmploymentStatusTypeId])
GO
PRINT N'Creating index [UX_EmploymentStatusType_Id] on [edfi].[EmploymentStatusType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_EmploymentStatusType_Id] ON [edfi].[EmploymentStatusType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[EmploymentStatusType]'
GO
ALTER TABLE [edfi].[EmploymentStatusType] ADD CONSTRAINT [EmploymentStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[EmploymentStatusType] ADD CONSTRAINT [EmploymentStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[EmploymentStatusType] ADD CONSTRAINT [EmploymentStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

