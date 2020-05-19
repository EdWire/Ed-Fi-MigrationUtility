-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[StaffTelephone]'
GO
ALTER TABLE [edfi].[StaffTelephone] ADD CONSTRAINT [FK_StaffTelephone_Staff] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE
GO
ALTER TABLE [edfi].[StaffTelephone] ADD CONSTRAINT [FK_StaffTelephone_TelephoneNumberType] FOREIGN KEY ([TelephoneNumberTypeId]) REFERENCES [edfi].[TelephoneNumberType] ([TelephoneNumberTypeId])
GO
