-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [DiagnosisType_PK] on [edfi].[DiagnosisType]'
GO
ALTER TABLE [edfi].[DiagnosisType] ADD CONSTRAINT [DiagnosisType_PK] PRIMARY KEY CLUSTERED  ([DiagnosisTypeId])
GO
PRINT N'Creating index [UX_DiagnosisType_Id] on [edfi].[DiagnosisType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_DiagnosisType_Id] ON [edfi].[DiagnosisType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[DiagnosisType]'
GO
ALTER TABLE [edfi].[DiagnosisType] ADD CONSTRAINT [DiagnosisType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[DiagnosisType] ADD CONSTRAINT [DiagnosisType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[DiagnosisType] ADD CONSTRAINT [DiagnosisType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

