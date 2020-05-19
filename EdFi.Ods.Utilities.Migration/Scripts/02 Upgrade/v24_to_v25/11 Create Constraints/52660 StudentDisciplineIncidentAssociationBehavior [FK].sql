-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentDisciplineIncidentAssociationBehavior]'
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociationBehavior] ADD CONSTRAINT [FK_StudentDisciplineIncidentAssociationBehavior_BehaviorDescriptor] FOREIGN KEY ([BehaviorDescriptorId]) REFERENCES [edfi].[BehaviorDescriptor] ([BehaviorDescriptorId])
GO
ALTER TABLE [edfi].[StudentDisciplineIncidentAssociationBehavior] ADD CONSTRAINT [FK_StudentDisciplineIncidentAssociationBehavior_StudentDisciplineIncidentAssociation] FOREIGN KEY ([StudentUSI], [SchoolId], [IncidentIdentifier]) REFERENCES [edfi].[StudentDisciplineIncidentAssociation] ([StudentUSI], [SchoolId], [IncidentIdentifier]) ON DELETE CASCADE
GO
