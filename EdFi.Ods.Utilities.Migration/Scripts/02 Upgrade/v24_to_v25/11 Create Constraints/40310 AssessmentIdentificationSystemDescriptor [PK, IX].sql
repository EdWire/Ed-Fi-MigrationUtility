-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [AssessmentIdentificationSystemDescriptor_PK] on [edfi].[AssessmentIdentificationSystemDescriptor]'
GO
ALTER TABLE [edfi].[AssessmentIdentificationSystemDescriptor] ADD CONSTRAINT [AssessmentIdentificationSystemDescriptor_PK] PRIMARY KEY CLUSTERED  ([AssessmentIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentIdentificationSystemDescriptor_Descriptor] on [edfi].[AssessmentIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentIdentificationSystemDescriptor_Descriptor] ON [edfi].[AssessmentIdentificationSystemDescriptor] ([AssessmentIdentificationSystemDescriptorId])
GO
PRINT N'Creating index [FK_AssessmentIdentificationSystemDescriptor_AssessmentIdentificationSystemType] on [edfi].[AssessmentIdentificationSystemDescriptor]'
GO
CREATE NONCLUSTERED INDEX [FK_AssessmentIdentificationSystemDescriptor_AssessmentIdentificationSystemType] ON [edfi].[AssessmentIdentificationSystemDescriptor] ([AssessmentIdentificationSystemTypeId])
GO

