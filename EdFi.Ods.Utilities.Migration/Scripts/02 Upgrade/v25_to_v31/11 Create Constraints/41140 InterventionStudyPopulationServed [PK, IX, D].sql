-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [InterventionStudyPopulationServed_PK] on [edfi].[InterventionStudyPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionStudyPopulationServed] ADD CONSTRAINT [InterventionStudyPopulationServed_PK] PRIMARY KEY CLUSTERED  ([EducationOrganizationId], [InterventionStudyIdentificationCode], [PopulationServedDescriptorId])
GO

PRINT N'Creating index [FK_InterventionStudyPopulationServed_InterventionStudy] on [edfi].[InterventionStudyPopulationServed]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyPopulationServed_InterventionStudy] ON [edfi].[InterventionStudyPopulationServed] ([EducationOrganizationId], [InterventionStudyIdentificationCode])
GO

PRINT N'Creating index [FK_InterventionStudyPopulationServed_PopulationServedDescriptor] on [edfi].[InterventionStudyPopulationServed]'
GO
CREATE NONCLUSTERED INDEX [FK_InterventionStudyPopulationServed_PopulationServedDescriptor] ON [edfi].[InterventionStudyPopulationServed] ([PopulationServedDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[InterventionStudyPopulationServed]'
GO
ALTER TABLE [edfi].[InterventionStudyPopulationServed] ADD CONSTRAINT [InterventionStudyPopulationServed_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
