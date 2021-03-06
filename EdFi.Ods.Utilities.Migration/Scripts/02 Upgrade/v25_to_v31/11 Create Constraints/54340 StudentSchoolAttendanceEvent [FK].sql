-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StudentSchoolAttendanceEvent]'
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [FK_StudentSchoolAttendanceEvent_AttendanceEventCategoryDescriptor] FOREIGN KEY ([AttendanceEventCategoryDescriptorId]) REFERENCES [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [FK_StudentSchoolAttendanceEvent_EducationalEnvironmentDescriptor] FOREIGN KEY ([EducationalEnvironmentDescriptorId]) REFERENCES [edfi].[EducationalEnvironmentDescriptor] ([EducationalEnvironmentDescriptorId])
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [FK_StudentSchoolAttendanceEvent_School] FOREIGN KEY ([SchoolId]) REFERENCES [edfi].[School] ([SchoolId])
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [FK_StudentSchoolAttendanceEvent_Session] FOREIGN KEY ([SchoolId], [SchoolYear], [SessionName]) REFERENCES [edfi].[Session] ([SchoolId], [SchoolYear], [SessionName])
GO
ALTER TABLE [edfi].[StudentSchoolAttendanceEvent] ADD CONSTRAINT [FK_StudentSchoolAttendanceEvent_Student] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI])
GO
