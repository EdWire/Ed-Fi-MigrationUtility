-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentEducationOrganizationAssociationTribalAffiliation]'
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationTribalAffiliation_StudentEducationOrganizationAssociation] FOREIGN KEY ([EducationOrganizationId], [StudentUSI]) REFERENCES [edfi].[StudentEducationOrganizationAssociation] ([EducationOrganizationId], [StudentUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StudentEducationOrganizationAssociationTribalAffiliation] ADD CONSTRAINT [FK_StudentEducationOrganizationAssociationTribalAffiliation_TribalAffiliationDescriptor] FOREIGN KEY ([TribalAffiliationDescriptorId]) REFERENCES [edfi].[TribalAffiliationDescriptor] ([TribalAffiliationDescriptorId])
GO
