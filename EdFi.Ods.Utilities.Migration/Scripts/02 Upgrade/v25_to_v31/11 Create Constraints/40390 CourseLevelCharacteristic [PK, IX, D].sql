-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [CourseLevelCharacteristic_PK] on [edfi].[CourseLevelCharacteristic]'
GO
ALTER TABLE [edfi].[CourseLevelCharacteristic] ADD CONSTRAINT [CourseLevelCharacteristic_PK] PRIMARY KEY CLUSTERED  ([CourseCode], [CourseLevelCharacteristicDescriptorId], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_CourseLevelCharacteristic_Course] on [edfi].[CourseLevelCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLevelCharacteristic_Course] ON [edfi].[CourseLevelCharacteristic] ([CourseCode], [EducationOrganizationId])
GO

PRINT N'Creating index [FK_CourseLevelCharacteristic_CourseLevelCharacteristicDescriptor] on [edfi].[CourseLevelCharacteristic]'
GO
CREATE NONCLUSTERED INDEX [FK_CourseLevelCharacteristic_CourseLevelCharacteristicDescriptor] ON [edfi].[CourseLevelCharacteristic] ([CourseLevelCharacteristicDescriptorId])
GO

PRINT N'Adding constraints to [edfi].[CourseLevelCharacteristic]'
GO
ALTER TABLE [edfi].[CourseLevelCharacteristic] ADD CONSTRAINT [CourseLevelCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
