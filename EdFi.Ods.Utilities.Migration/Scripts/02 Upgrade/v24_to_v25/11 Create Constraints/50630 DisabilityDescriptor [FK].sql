-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[DisabilityDescriptor]'
GO
ALTER TABLE [edfi].[DisabilityDescriptor] ADD CONSTRAINT [FK_DisabilityDescriptor_Descriptor] FOREIGN KEY ([DisabilityDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[DisabilityDescriptor] ADD CONSTRAINT [FK_DisabilityDescriptor_DisabilityCategoryType] FOREIGN KEY ([DisabilityCategoryTypeId]) REFERENCES [edfi].[DisabilityCategoryType] ([DisabilityCategoryTypeId])
GO
ALTER TABLE [edfi].[DisabilityDescriptor] ADD CONSTRAINT [FK_DisabilityDescriptor_DisabilityType] FOREIGN KEY ([DisabilityTypeId]) REFERENCES [edfi].[DisabilityType] ([DisabilityTypeId])
GO
