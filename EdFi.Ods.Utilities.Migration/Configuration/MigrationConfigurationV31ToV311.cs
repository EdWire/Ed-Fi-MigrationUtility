﻿// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using EdFi.Ods.Utilities.Migration.Enumerations;

namespace EdFi.Ods.Utilities.Migration.Configuration
{
    public class MigrationConfigurationV31ToV311 : MigrationConfigurationVersionSpecific
    {
        public override EdFiOdsVersion FromVersion => EdFiOdsVersion.V31;
        public override EdFiOdsVersion ToVersion => EdFiOdsVersion.V311;

        public override string MigrationScriptVersionSpecificDirectoryName => "v31_to_v311";
    }
}
