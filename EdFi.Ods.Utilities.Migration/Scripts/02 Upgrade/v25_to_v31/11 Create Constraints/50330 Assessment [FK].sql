-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[Assessment]'
GO
ALTER TABLE [edfi].[Assessment] ADD CONSTRAINT [FK_Assessment_AssessmentCategoryDescriptor] FOREIGN KEY ([AssessmentCategoryDescriptorId]) REFERENCES [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId])
GO
ALTER TABLE [edfi].[Assessment] ADD CONSTRAINT [FK_Assessment_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
