﻿// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using System.Collections.Generic;
using System.IO;
using Dapper;
using EdFi.Ods.Utilities.Migration.Configuration;
using EdFi.Ods.Utilities.Migration.Enumerations;
using EdFi.Ods.Utilities.Migration.MigrationManager;
using EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v34;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.v33_to_v34
{
    public abstract class V33ToV34MigrationTest : MigrationTestBase
    {
        protected override EdFiOdsVersion FromVersion => EdFiOdsVersion.V33;
        protected override EdFiOdsVersion ToVersion => EdFiOdsVersion.V34;
        protected override string TestDataDirectoryName => "v33_to_v34";

        protected OdsUpgradeResult PerformTestMigration(string sourceDataScriptName = null, DynamicParameters scriptParameters = null, string calendarConfigurationFileName = null, string namespacePrefix = null)
        {
            if (sourceDataScriptName != null)
            {
                InsertTestRecords(sourceDataScriptName, scriptParameters);
            }

            var versionConfiguration =
                UpgradeVersionConfiguration.BuildValidUpgradeConfiguration(ConnectionString,
                    FromVersion.ToString(), ToVersion.ToString());

            var config = new MigrationConfigurationV33ToV34
            {
                DatabaseConnectionString = ConnectionString,
                BaseMigrationScriptFolderPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseMigrationScriptFolderPath")),
                BaseDescriptorXmlDirectoryPath = Path.GetFullPath(MigrationTestSettingsProvider.GetConfigVariable("BaseDescriptorXmlDirectoryPath")),
                BypassExtensionValidationCheck = false,
                Timeout = SqlCommandTimeout
            };

            var migrationManager = new OdsMigrationManagerV33ToV34(config, versionConfiguration);
            return RunMigration(migrationManager);
        }

        protected IEnumerable<T> GetV34UpgradeResult<T>() where T : Version34DbModel
        {
            return GetTableContents<T>(ToVersion);
        }
    }
}
