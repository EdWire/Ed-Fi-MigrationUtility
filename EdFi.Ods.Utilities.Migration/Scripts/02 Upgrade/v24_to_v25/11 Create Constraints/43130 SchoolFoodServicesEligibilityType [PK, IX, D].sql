-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Creating primary key [SchoolFoodServicesEligibilityType_PK] on [edfi].[SchoolFoodServicesEligibilityType]'
GO
ALTER TABLE [edfi].[SchoolFoodServicesEligibilityType] ADD CONSTRAINT [SchoolFoodServicesEligibilityType_PK] PRIMARY KEY CLUSTERED  ([SchoolFoodServicesEligibilityTypeId])
GO
PRINT N'Creating index [UX_SchoolFoodServicesEligibilityType_Id] on [edfi].[SchoolFoodServicesEligibilityType]'
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_SchoolFoodServicesEligibilityType_Id] ON [edfi].[SchoolFoodServicesEligibilityType] ([Id]) WITH (FILLFACTOR=100, PAD_INDEX=ON)
GO

PRINT N'Adding constraints to [edfi].[SchoolFoodServicesEligibilityType]'
GO
ALTER TABLE [edfi].[SchoolFoodServicesEligibilityType] ADD CONSTRAINT [SchoolFoodServicesEligibilityType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [edfi].[SchoolFoodServicesEligibilityType] ADD CONSTRAINT [SchoolFoodServicesEligibilityType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO
ALTER TABLE [edfi].[SchoolFoodServicesEligibilityType] ADD CONSTRAINT [SchoolFoodServicesEligibilityType_DF_Id] DEFAULT (newid()) FOR [Id]
GO

