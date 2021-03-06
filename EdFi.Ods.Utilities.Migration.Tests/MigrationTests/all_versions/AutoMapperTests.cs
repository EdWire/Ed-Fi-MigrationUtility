﻿// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

using AutoMapper;
using EdFi.Ods.Utilities.Migration.Configuration;
using NUnit.Framework;

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.all_versions
{
    [TestFixture]
    public class AutoMapperTests
    {
        [Test]
        public void ConfigurationAutoMapperProfileShouldBeValid()
        {
            new ConfigurationAutoMapper().MapperConfiguration.AssertConfigurationIsValid();
        }
    }
}
