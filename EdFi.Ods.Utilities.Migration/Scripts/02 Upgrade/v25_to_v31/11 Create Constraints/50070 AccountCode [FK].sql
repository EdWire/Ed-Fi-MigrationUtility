-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AccountCode]'
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [FK_AccountCode_AccountClassificationDescriptor] FOREIGN KEY ([AccountClassificationDescriptorId]) REFERENCES [edfi].[AccountClassificationDescriptor] ([AccountClassificationDescriptorId])
GO
ALTER TABLE [edfi].[AccountCode] ADD CONSTRAINT [FK_AccountCode_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
