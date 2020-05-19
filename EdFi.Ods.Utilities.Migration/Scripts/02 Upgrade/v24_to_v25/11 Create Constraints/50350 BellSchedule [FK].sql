-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[BellSchedule]'
GO
ALTER TABLE [edfi].[BellSchedule] ADD CONSTRAINT [FK_BellSchedule_CalendarDate] FOREIGN KEY ([SchoolId], [Date]) REFERENCES [edfi].[CalendarDate] ([SchoolId], [Date])
GO
ALTER TABLE [edfi].[BellSchedule] ADD CONSTRAINT [FK_BellSchedule_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO
