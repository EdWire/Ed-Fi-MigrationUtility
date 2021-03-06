-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[AcademicWeek]'
GO
ALTER TABLE [edfi].[AcademicWeek] ADD CONSTRAINT [FK_AcademicWeek_CalendarDate] FOREIGN KEY ([SchoolId], [BeginDate]) REFERENCES [edfi].[CalendarDate] ([SchoolId], [Date])
GO
ALTER TABLE [edfi].[AcademicWeek] ADD CONSTRAINT [FK_AcademicWeek_CalendarDate1] FOREIGN KEY ([SchoolId], [EndDate]) REFERENCES [edfi].[CalendarDate] ([SchoolId], [Date])
GO
ALTER TABLE [edfi].[AcademicWeek] ADD CONSTRAINT [FK_AcademicWeek_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
