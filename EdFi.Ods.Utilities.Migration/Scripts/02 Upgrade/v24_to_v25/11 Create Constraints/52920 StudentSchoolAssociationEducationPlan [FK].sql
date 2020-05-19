-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSchoolAssociationEducationPlan]'
GO
ALTER TABLE [edfi].[StudentSchoolAssociationEducationPlan] ADD CONSTRAINT [FK_StudentSchoolAssociationEducationPlan_EducationPlanType] FOREIGN KEY ([EducationPlanTypeId]) REFERENCES [edfi].[EducationPlanType] ([EducationPlanTypeId])
GO
ALTER TABLE [edfi].[StudentSchoolAssociationEducationPlan] ADD CONSTRAINT [FK_StudentSchoolAssociationEducationPlan_StudentSchoolAssociation] FOREIGN KEY ([StudentUSI], [SchoolId], [EntryDate]) REFERENCES [edfi].[StudentSchoolAssociation] ([StudentUSI], [SchoolId], [EntryDate]) ON DELETE CASCADE ON UPDATE CASCADE
GO
