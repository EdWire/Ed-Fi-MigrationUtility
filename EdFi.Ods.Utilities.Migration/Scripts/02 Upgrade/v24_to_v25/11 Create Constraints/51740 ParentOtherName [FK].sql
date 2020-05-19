-- SPDX-License-Identifier: Apache-2.0
-- Licensed to the Ed-Fi Alliance under one or more agreements.
-- The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
-- See the LICENSE and NOTICES files in the project root for more information.

PRINT N'Adding foreign keys to [edfi].[ParentOtherName]'
GO
ALTER TABLE [edfi].[ParentOtherName] ADD CONSTRAINT [FK_ParentOtherName_OtherNameType] FOREIGN KEY ([OtherNameTypeId]) REFERENCES [edfi].[OtherNameType] ([OtherNameTypeId])
GO
ALTER TABLE [edfi].[ParentOtherName] ADD CONSTRAINT [FK_ParentOtherName_Parent] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI]) ON DELETE CASCADE
GO
