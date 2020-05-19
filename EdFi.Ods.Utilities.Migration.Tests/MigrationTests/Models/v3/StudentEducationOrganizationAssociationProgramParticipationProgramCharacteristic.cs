﻿// SPDX-License-Identifier: Apache-2.0
// Licensed to the Ed-Fi Alliance under one or more agreements.
// The Ed-Fi Alliance licenses this file to you under the Apache License, Version 2.0.
// See the LICENSE and NOTICES files in the project root for more information.

namespace EdFi.Ods.Utilities.Migration.Tests.MigrationTests.Models.v3
{
    public class StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic : Version3DbModel
    {
        [Key]
        public int EducationOrganizationId { get; set; }

        [Key]
        public int ProgramTypeDescriptorId { get; set; }

        [Key]
        public int StudentUSI { get; set; }

        public int ProgramCharacteristicDescriptorId { get; set; }
    }
}