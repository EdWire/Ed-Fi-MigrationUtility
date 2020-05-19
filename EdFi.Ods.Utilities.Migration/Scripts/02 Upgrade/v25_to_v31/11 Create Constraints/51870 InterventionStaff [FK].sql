-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[InterventionStaff]'
GO
ALTER TABLE [edfi].[InterventionStaff] ADD CONSTRAINT [FK_InterventionStaff_Intervention] FOREIGN KEY ([EducationOrganizationId], [InterventionIdentificationCode]) REFERENCES [edfi].[Intervention] ([EducationOrganizationId], [InterventionIdentificationCode]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[InterventionStaff] ADD CONSTRAINT [FK_InterventionStaff_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI])
GO
