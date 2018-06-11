# RISC-V Compliance Test I-SRL-01
#
# Copyright (c) 2017, Codasip Ltd.
# All rights reserved.
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
#      * Redistributions of source code must retain the above copyright
#        notice, this list of conditions and the following disclaimer.
#      * Redistributions in binary form must reproduce the above copyright
#        notice, this list of conditions and the following disclaimer in the
#        documentation and/or other materials provided with the distribution.
#      * Neither the name of the Codasip Ltd. nor the
#        names of its contributors may be used to endorse or promote products
#        derived from this software without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS
# IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
# THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
# PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Codasip Ltd. BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
# LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
# ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF
# THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#
# Specification: RV32I Base Integer Instruction Set, Version 2.0
# Description: Testing instruction SRL.

#include "compliance_test.h"

# Test Virtual Machine (TVM) used by program.
RV_COMPLIANCE_RV32M

# Test code region
RV_COMPLIANCE_CODE_BEGIN

    # ---------------------------------------------------------------------------------------------
    # Test part A1 - general test of value 0 with 0, 1, -1, MIN, MAX (5bit) register values

    # Addresses for test data and results
    la      x1, test_A1_data
    la      x2, test_A1_res

    # Load testdata
    lw      x3, 0(x1)

    # Register initialization
    li      x4, 1
    li      x5, 0xF
    li      x6, 0x1F
    li      x7, 0
    li      x8, 0x10

    # Test
    srl     x4, x3, x4
    srl     x5, x3, x5
    srl     x6, x3, x6
    srl     x7, x3, x7
    srl     x8, x3, x8

    # Store results
    sw      x3, 0(x2)
    sw      x4, 4(x2)
    sw      x5, 8(x2)
    sw      x6, 12(x2)
    sw      x7, 16(x2)
    sw      x8, 20(x2)

    # ---------------------------------------------------------------------------------------------
    # Test part A2 - general test of value 1 with 0, 1, -1, MIN, MAX (5bit) register values

    # Addresses for test data and results
    la      x1, test_A2_data
    la      x2, test_A2_res

    # Load testdata
    lw      x8, 0(x1)

    # Register initialization
    li      x9, 1
    li      x10, 0xF
    li      x11, 0x1F
    li      x12, 0
    li      x13, 0x10

    # Test
    srl     x9, x8, x9
    srl     x10, x8, x10
    srl     x11, x8, x11
    srl     x12, x8, x12
    srl     x13, x8, x13

    # Store results
    sw      x8, 0(x2)
    sw      x9, 4(x2)
    sw      x10, 8(x2)
    sw      x11, 12(x2)
    sw      x12, 16(x2)
    sw      x13, 20(x2)

    # ---------------------------------------------------------------------------------------------
    # Test part A3 - general test of value -1 with 0, 1, -1, MIN, MAX (5bit) register values

    # Addresses for test data and results
    la      x1, test_A3_data
    la      x2, test_A3_res

    # Load testdata
    lw      x13, 0(x1)

    # Register initialization
    li      x14, 1
    li      x15, 0xF
    li      x16, 0x1F
    li      x17, 0
    li      x18, 0x10

    # Test
    srl     x14, x13, x14
    srl     x15, x13, x15
    srl     x16, x13, x16
    srl     x17, x13, x17
    srl     x18, x13, x18

    # Store results
    sw      x13, 0(x2)
    sw      x14, 4(x2)
    sw      x15, 8(x2)
    sw      x16, 12(x2)
    sw      x17, 16(x2)
    sw      x18, 20(x2)

    # ---------------------------------------------------------------------------------------------
    # Test part A4 - general test of value 0x7FFFFFFF with 0, 1, -1, MIN, MAX (5bit) register values

    # Addresses for test data and results
    la      x12, test_A4_data
    la      x13, test_A4_res

    # Load testdata
    lw      x18, 0(x12)

    # Register initialization
    li      x19, 1
    li      x20, 0xF
    li      x21, 0x1F
    li      x22, 0
    li      x23, 0x10

    # Test
    srl     x19, x18, x19
    srl     x20, x18, x20
    srl     x21, x18, x21
    srl     x22, x18, x22
    srl     x23, x18, x23

    # Store results
    sw      x18, 0(x13)
    sw      x19, 4(x13)
    sw      x20, 8(x13)
    sw      x21, 12(x13)
    sw      x22, 16(x13)
    sw      x23, 20(x13)

    # ---------------------------------------------------------------------------------------------
    # Test part A5 - general test of value 0x80000000 with 0, 1, -1, MIN, MAX (5bit) register values

    # Addresses for test data and results
    la      x12, test_A5_data
    la      x13, test_A5_res

    # Load testdata
    lw      x23, 0(x12)

    # Register initialization
    li      x24, 1
    li      x25, 0xF
    li      x26, 0x1F
    li      x27, 0
    li      x28, 0x10

    # Test
    srl     x24, x23, x24
    srl     x25, x23, x25
    srl     x26, x23, x26
    srl     x27, x23, x27
    srl     x28, x23, x28

    # Store results
    sw      x23, 0(x13)
    sw      x24, 4(x13)
    sw      x25, 8(x13)
    sw      x26, 12(x13)
    sw      x27, 16(x13)
    sw      x28, 20(x13)

    # ---------------------------------------------------------------------------------------------
    # Test part B - testing forwarding between instructions

    # Addresses for test data and results
    la      x25, test_B_data
    la      x26, test_B_res

    # Load testdata
    lw      x28, 0(x25)

    # Register initialization
    li      x27, 0x1

    # Test
    srl     x29, x28, x27
    srl     x30, x29, x27
    srl     x31, x30, x27
    srl     x1, x31, x27
    srl     x2, x1, x27
    srl     x3, x2, x27

    # Store results
    sw      x28, 0(x26)
    sw      x29, 4(x26)
    sw      x30, 8(x26)
    sw      x31, 12(x26)
    sw      x1, 16(x26)
    sw      x2, 20(x26)
    sw      x3, 24(x26)

    # ---------------------------------------------------------------------------------------------
    # Test part C - testing writing to x0

    # Addresses for test data and results
    la      x1, test_C_data
    la      x2, test_C_res

    # Load testdata
    lw      x5, 0(x1)

    # Register initialization
    li      x27, 1

    # Test
    srl     x0, x5, x27

    # Store results
    sw      x0, 0(x2)

    # ---------------------------------------------------------------------------------------------
    # Test part D - testing forwarding throught x0

    # Addresses for test data and results
    la      x1, test_D_data
    la      x2, test_D_res

    # Load testdata
    lw      x5, 0(x1)

    # Register initialization
    li      x27, 1

    # Test
    srl     x0, x5, x27
    srl     x5, x0, x27

    # Store results
    sw      x0, 0(x2)
    sw      x5, 4(x2)

    # ---------------------------------------------------------------------------------------------
    # Test part E - testing shift by value greater than 31

    # Addresses for test data and results
    la      x1, test_E_data
    la      x2, test_E_res

    # Load testdata
    lw      x3, 0(x1)

    # Register initialization
    li      x4, 0xFFFFFE0
    li      x5, 0xFFFFFE1
    li      x6, 0xFFFFFEF
    li      x7, 0xFFFFFFF

    # Test
    srl     x4, x3, x4
    srl     x5, x3, x5
    srl     x6, x3, x6
    srl     x7, x3, x7

    # Store results
    sw      x4, 0(x2)
    sw      x5, 4(x2)
    sw      x6, 8(x2)
    sw      x7, 12(x2)

    # ---------------------------------------------------------------------------------------------
    # HALT
    RV_COMPLIANCE_HALT

RV_COMPLIANCE_CODE_END

# Input data section.
    .data
    .align 4
test_A1_data:
    .word 0
test_A2_data:
    .word 1
test_A3_data:
    .word -1
test_A4_data:
    .word 0x7FFFFFFF
test_A5_data:
    .word 0x80000000
test_B_data:
    .word 0xABCDEF10
test_C_data:
    .word 0x12345678
test_D_data:
    .word 0xFEDCBA98
test_E_data:
    .word 0x87654321

# Output data section.
RV_COMPLIANCE_DATA_BEGIN
    .align 4

test_A1_res:
    .fill 6, 4, -1
test_A2_res:
    .fill 6, 4, -1
test_A3_res:
    .fill 6, 4, -1
test_A4_res:
    .fill 6, 4, -1
test_A5_res:
    .fill 6, 4, -1
test_B_res:
    .fill 7, 4, -1
test_C_res:
    .fill 1, 4, -1
test_D_res:
    .fill 2, 4, -1
test_E_res:
    .fill 4, 4, -1

RV_COMPLIANCE_DATA_END