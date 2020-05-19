-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionPrescription]'
GO
ALTER TABLE [edfi].[InterventionPrescription] ADD CONSTRAINT [FK_InterventionPrescription_DeliveryMethodType] FOREIGN KEY ([DeliveryMethodTypeId]) REFERENCES [edfi].[DeliveryMethodType] ([DeliveryMethodTypeId])
GO
ALTER TABLE [edfi].[InterventionPrescription] ADD CONSTRAINT [FK_InterventionPrescription_EducationOrganization] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO
ALTER TABLE [edfi].[InterventionPrescription] ADD CONSTRAINT [FK_InterventionPrescription_InterventionClassType] FOREIGN KEY ([InterventionClassTypeId]) REFERENCES [edfi].[InterventionClassType] ([InterventionClassTypeId])
GO
