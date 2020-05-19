-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [LocalEducationAgencyFederalFunds_PK] on [edfi].[LocalEducationAgencyFederalFunds]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] ADD CONSTRAINT [LocalEducationAgencyFederalFunds_PK] PRIMARY KEY CLUSTERED  ([LocalEducationAgencyId], [FiscalYear])
GO
PRINT N'Creating index [UX_LocalEducationAgencyFederalFunds_Id] on [edfi].[LocalEducationAgencyFederalFunds]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_LocalEducationAgencyFederalFunds_Id] ON [edfi].[LocalEducationAgencyFederalFunds] ([Id]) WITH (FILLFACTOR=75, PAD_INDEX=ON)
GO
PRINT N'Creating index [FK_LocalEducationAgencyFederalFunds_LocalEducationAgency] on [edfi].[LocalEducationAgencyFederalFunds]'
GO
CREATE NONCLUSTERED INDEX [FK_LocalEducationAgencyFederalFunds_LocalEducationAgency] ON [edfi].[LocalEducationAgencyFederalFunds] ([LocalEducationAgencyId])
GO

PRINT N'Adding constraints to [edfi].[LocalEducationAgencyFederalFunds]'
GO
ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] ADD CONSTRAINT [LocalEducationAgencyFederalFunds_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] ADD CONSTRAINT [LocalEducationAgencyFederalFunds_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[LocalEducationAgencyFederalFunds] ADD CONSTRAINT [LocalEducationAgencyFederalFunds_DF_Id] DEFAULT (newid()) FOR [Id]
GO

