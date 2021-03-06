-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[EducationOrganizationInterventionPrescriptionAssociation]'
GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ADD CONSTRAINT [FK_EducationOrganizationInterventionPrescriptionAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[EducationOrganizationInterventionPrescriptionAssociation] ADD CONSTRAINT [FK_EducationOrganizationInterventionPrescriptionAssociation_InterventionPrescription] FOREIGN KEY ([InterventionPrescriptionEducationOrganizationId], [InterventionPrescriptionIdentificationCode]) REFERENCES [edfi].[InterventionPrescription] ([EducationOrganizationId], [InterventionPrescriptionIdentificationCode])
GO
