/*
 * Intel ACPI Component Architecture
 * AML/ASL+ Disassembler version 20141107-64 [Jan  2 2015]
 * Copyright (c) 2000 - 2014 Intel Corporation
 * 
 * Disassembling to non-symbolic legacy ASL operators
 *
 * Disassembly of DSDT-MacNB.aml, Sun May 24 10:07:37 2015
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00003564 (13668)
 *     Revision         0x01 **** 32-bit table (V1), no 64-bit math support
 *     Checksum         0x84
 *     OEM ID           "DELL  "
 *     OEM Table ID     "AWRDACPI"
 *     OEM Revision     0x00001000 (4096)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20131218 (538120728)
 */
DefinitionBlock ("DSDT-MacNB.aml", "DSDT", 1, "DELL  ", "AWRDACPI", 0x00001000)
{
    Scope (_PR)
    {
        Processor (CPU0, 0x00, 0x00000410, 0x06) {}
        Processor (CPU1, 0x01, 0x00000410, 0x06) {}
        Processor (CPU2, 0x02, 0x00000410, 0x06) {}
        Processor (CPU3, 0x03, 0x00000410, 0x06) {}
    }

    Name (_S0, Package (0x04)  // _S0_: S0 System State
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S3, Package (0x04)  // _S3_: S3 System State
    {
        0x05, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S4, Package (0x04)  // _S4_: S4 System State
    {
        0x06, 
        Zero, 
        Zero, 
        Zero
    })
    Name (_S5, Package (0x04)  // _S5_: S5 System State
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Name (FLAG, Zero)
    Name (STAT, Zero)
    OperationRegion (DEBG, SystemIO, 0x80, One)
    Field (DEBG, ByteAcc, NoLock, Preserve)
    {
        DBG1,   8
    }

    OperationRegion (RCRB, SystemMemory, 0xFED1C000, 0x4000)
    Field (RCRB, DWordAcc, Lock, Preserve)
    {
        Offset (0x3404), 
            ,   7, 
        HPTF,   1
    }

    OperationRegion (ELKM, SystemMemory, 0x000FFFEA, One)
    Field (ELKM, ByteAcc, NoLock, Preserve)
    {
            ,   1, 
            ,   1, 
        ELSO,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1
    }

    OperationRegion (EXTM, SystemMemory, 0x000FF830, 0x10)
    Field (EXTM, WordAcc, NoLock, Preserve)
    {
        ROM1,   16, 
        RMS1,   16, 
        ROM2,   16, 
        RMS2,   16, 
        ROM3,   16, 
        RMS3,   16, 
        AMEM,   32
    }

    OperationRegion (SMIC, SystemIO, 0xB2, One)
    Field (SMIC, ByteAcc, NoLock, Preserve)
    {
        SCP,    8
    }

    OperationRegion (TCOI, SystemIO, 0x0460, 0x08)
    Field (TCOI, WordAcc, NoLock, Preserve)
    {
        Offset (0x04), 
            ,   9, 
        SCIS,   1, 
        Offset (0x06)
    }

    OperationRegion (PM1S, SystemIO, 0x0400, 0x04)
    Field (PM1S, ByteAcc, NoLock, Preserve)
    {
        PM00,   8, 
        PM01,   8, 
        PM02,   8, 
        PM03,   8
    }

    OperationRegion (PM2S, SystemIO, 0x0429, One)
    Field (PM2S, ByteAcc, NoLock, Preserve)
    {
            ,   1, 
        PM29,   1
    }

    OperationRegion (SPEN, SystemIO, 0x0430, One)
    Field (SPEN, ByteAcc, NoLock, Preserve)
    {
            ,   4, 
        TRAP,   1
    }

    OperationRegion (GBLE, SystemIO, 0x0421, One)
    Field (GBLE, ByteAcc, NoLock, Preserve)
    {
        ESMI,   8
    }

    OperationRegion (APMP, SystemIO, 0xB2, 0x02)
    Field (APMP, ByteAcc, NoLock, Preserve)
    {
        APMC,   8, 
        APMD,   8
    }

    OperationRegion (GPO, SystemIO, 0x048C, 0x04)
    Field (GPO, ByteAcc, NoLock, Preserve)
    {
        GO00,   1, 
        GO01,   1, 
        GO02,   1, 
        GO03,   1, 
        GO04,   1, 
        GO05,   1, 
        GO06,   1, 
        GO07,   1, 
        GO08,   1, 
        GO09,   1, 
        GO0A,   1, 
        GO0B,   1, 
        GO0C,   1, 
        GO0D,   1, 
        GO0E,   1, 
        GO0F,   1, 
        GO10,   1, 
        GO11,   1, 
        GO12,   1, 
        GO13,   1, 
        GO14,   1, 
        GO15,   1, 
        GO16,   1, 
        GO17,   1, 
        GO18,   1, 
        GO19,   1, 
        GO1A,   1, 
        GO1B,   1, 
        GO1C,   1, 
        GO1D,   1, 
        GO1E,   1, 
        GO1F,   1
    }

    OperationRegion (GPO2, SystemIO, 0x04B8, 0x04)
    Field (GPO2, ByteAcc, NoLock, Preserve)
    {
        GO20,   1, 
        GO21,   1, 
        GO22,   1, 
        GO23,   1, 
        GO24,   1, 
        GO25,   1, 
        GO26,   1, 
        GO27,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
            ,   1, 
        Offset (0x02), 
        GO30,   1, 
        GO31,   1
    }

    Name (OSFX, One)
    Name (AMAC, Zero)
    Name (OSFL, One)
    Method (STRC, 2, NotSerialized)
    {
        If (LNotEqual (SizeOf (Arg0), SizeOf (Arg1)))
        {
            Return (Zero)
        }

        Add (SizeOf (Arg0), One, Local0)
        Name (BUF0, Buffer (Local0) {})
        Name (BUF1, Buffer (Local0) {})
        Store (Arg0, BUF0)
        Store (Arg1, BUF1)
        While (Local0)
        {
            Decrement (Local0)
            If (LNotEqual (DerefOf (Index (BUF0, Local0)), DerefOf (Index (BUF1, Local0
                ))))
            {
                Return (Zero)
            }
        }

        Return (One)
    }

    OperationRegion (RTCM, SystemIO, 0x70, 0x02)
    Field (RTCM, ByteAcc, NoLock, Preserve)
    {
        CMIN,   8, 
        CMDA,   8
    }

    IndexField (CMIN, CMDA, ByteAcc, NoLock, Preserve)
    {
        Offset (0x0F), 
        SHUT,   8
    }

    OperationRegion (INFO, SystemMemory, 0x000FF840, One)
    Field (INFO, ByteAcc, NoLock, Preserve)
    {
        KBDI,   1, 
        RTCW,   1, 
        PS2F,   1, 
        IRFL,   2, 
        DISE,   1, 
        SSHU,   1, 
        AWMD,   1
    }

    OperationRegion (BEEP, SystemIO, 0x61, One)
    Field (BEEP, ByteAcc, NoLock, Preserve)
    {
        S1B,    8
    }

    OperationRegion (CONT, SystemIO, 0x40, 0x04)
    Field (CONT, ByteAcc, NoLock, Preserve)
    {
        CNT0,   8, 
        CNT1,   8, 
        CNT2,   8, 
        CTRL,   8
    }

    Method (DTGP, 5, NotSerialized)
    {
        If (LEqual (Arg0, ToUUID ("a0b5b7c6-1318-441c-b0c9-fe695eaf949b")))
        {
            If (LEqual (Arg1, One))
            {
                If (LEqual (Arg2, Zero))
                {
                    Store (Buffer (One)
                        {
                             0x03                                           
                        }, Arg4)
                    Return (One)
                }

                If (LEqual (Arg2, One))
                {
                    Return (One)
                }
            }
        }

        Store (Buffer (One)
            {
                 0x00                                           
            }, Arg4)
        Return (Zero)
    }

    Scope (\)
    {
        Name (PICF, Zero)
        Method (_PIC, 1, NotSerialized)  // _PIC: Interrupt Model
        {
            Store (Arg0, PICF)
        }
    }

    Method (_PTS, 1, NotSerialized)  // _PTS: Prepare To Sleep
    {
        \RMDT.P2 ("_PTS enter with Arg0 = ", Arg0)
        Or (Arg0, 0xF0, Local0)
        Store (Local0, DBG1)
        Store (One, PM29)
        If (LNotEqual (VID0, 0xFFFF))
        {
            If (LEqual (And (RSR0, One), One))
            {
                Or (RSR0, One, RSR0)
                Or (PMC0, 0x80, PMC0)
            }
        }

        If (LNotEqual (VID1, 0xFFFF))
        {
            If (LEqual (And (RSR1, One), One))
            {
                Or (RSR1, One, RSR1)
                Or (PMC1, 0x80, PMC1)
            }
        }

        If (LNotEqual (VID2, 0xFFFF))
        {
            If (LEqual (And (RSR2, One), One))
            {
                Or (RSR2, One, RSR2)
                Or (PMC2, 0x80, PMC2)
            }
        }

        If (LNotEqual (VID3, 0xFFFF))
        {
            If (LEqual (And (RSR3, One), One))
            {
                Or (RSR3, One, RSR3)
                Or (PMC3, 0x80, PMC3)
            }
        }

        OSTP ()
        If (LEqual (Arg0, One))
        {
            SFAN (Zero)
        }

        If (LEqual (Arg0, 0x03)) {}
        If (LEqual (Arg0, 0x05))
        {
            Store (ESMI, Local0)
            And (Local0, 0xFB, Local0)
            Store (Local0, ESMI)
            Store (0x99, SMIP)
            Store (Zero, TRAP)
            Sleep (0x10)
        }

        If (LEqual (Arg0, 0x04))
        {
            If (LNot (PICF))
            {
                Sleep (0x64)
            }
        }

        \RMDT.P7 ("_PTS exit", "SMIP =", SMIP, "ESMI =", ESMI, "TRAP = ", TRAP)
    }

    Method (_WAK, 1, NotSerialized)  // _WAK: Wake
    {
        \RMDT.P7 ("_WAK enter Arg0 =", Arg0, "SMIP & OSFL =", SMIP, OSFL, "OSFX =", OSFX)
        If (LOr (LLess (Arg0, One), LGreater (Arg0, 0x05)))
        {
            Store (0x03, Arg0)
        }

        Store (0xFF, DBG1)
        If (LEqual (Arg0, 0x03))
        {
            Store (0x88, SCP)
        }

        If (LEqual (Arg0, 0x04))
        {
            If (LEqual (OSFL, Zero))
            {
                If (LEqual (OSFX, 0x03))
                {
                    Store (0x59, SMIP)
                }
                Else
                {
                    Store (0x58, SMIP)
                }
            }

            If (LEqual (OSFL, One))
            {
                Store (0x56, SMIP)
            }

            If (LEqual (OSFL, 0x02))
            {
                Store (0x57, SMIP)
            }

            If (LEqual (OSFX, 0x03))
            {
                Store (0x59, SMIP)
            }
        }

        SFAN (0xFF)
        If (OSFL)
        {
            Notify (\_SB.PWRB, 0x02)
        }
        Else
        {
            If (LEqual (RTCW, Zero))
            {
                Notify (\_SB.PWRB, 0x02)
            }
        }

        Notify (\_SB.PCI0.UHC1, Zero)
        Notify (\_SB.PCI0.UHC2, Zero)
        Notify (\_SB.PCI0.UHC3, Zero)
        Notify (\_SB.PCI0.UHC4, Zero)
        Notify (\_SB.PCI0.UHC5, Zero)
        Notify (\_SB.PCI0.UHC6, Zero)
        Notify (\_SB.PCI0.EHC1, Zero)
        Notify (\_SB.PCI0.EHC2, Zero)
        \RMDT.P6 ("_WAK exit, SMIP =", SMIP, "OSFL =", OSFL, "OSFX =", OSFX)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Scope (_SI)
    {
        Method (_MSG, 1, NotSerialized)  // _MSG: Message
        {
            Store ("Local0", Local0)
        }

        Method (_SST, 1, NotSerialized)  // _SST: System Status
        {
            Store ("Local0", Local0)
        }
    }

    Scope (_GPE)
    {
        Method (_L06, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L06 enter")
            Store (One, SCIS)
            \RMDT.P1 ("GPE _L06 exit")
        }

        Method (_L03, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L03 enter")
            Notify (\_SB.PCI0.UHC1, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L03 exit")
        }

        Method (_L04, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L04 enter")
            Notify (\_SB.PCI0.UHC2, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L04 exit")
        }

        Method (_L0C, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L0C enter")
            Notify (\_SB.PCI0.UHC3, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L0C exit")
        }

        Method (_L0E, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L0E enter")
            Notify (\_SB.PCI0.UHC4, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L0E exit")
        }

        Method (_L05, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L05 enter")
            Notify (\_SB.PCI0.UHC5, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L05 exit")
        }

        Method (_L20, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L20 enter")
            Notify (\_SB.PCI0.UHC6, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L20 exit")
        }

        Method (_L0D, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L0D enter")
            Notify (\_SB.PCI0.EHC1, 0x02)
            Notify (\_SB.PCI0.EHC2, 0x02)
            Notify (\_SB.PCI0.HDEF, 0x02)
            Notify (\_SB.PCI0.GIGE, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L0D exit")
        }

        Method (_L0B, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L0B enter")
            Notify (\_SB.PCI0.HUB0, 0x02)
            Notify (\_SB.PWRB, 0x02)
            \RMDT.P1 ("GPE _L0B exit")
        }

        Method (_L08, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L08 enter")
            \RMDT.P1 ("GPE _L08 exit")
        }

        Method (_L09, 0, NotSerialized)  // _Lxx: Level-Triggered GPE
        {
            \RMDT.P1 ("GPE _L09 enter")
            If (LNotEqual (VID0, 0xFFFF))
            {
                If (LEqual (And (RSR0, One), One))
                {
                    Store (0xFF, RSR0)
                    Store (0x80, PMC0)
                    Notify (\_SB.PCI0.PEX0, 0x02)
                }
            }

            If (LNotEqual (VID1, 0xFFFF))
            {
                If (LEqual (And (RSR1, One), One))
                {
                    Store (0xFF, RSR1)
                    Store (0x80, PMC1)
                    Notify (\_SB.PCI0.PEX1, 0x02)
                }
            }

            If (LNotEqual (VID2, 0xFFFF))
            {
                If (LEqual (And (RSR2, One), One))
                {
                    Store (0xFF, RSR2)
                    Store (0x80, PMC2)
                    Notify (\_SB.PCI0.PEX2, 0x02)
                }
            }

            If (LNotEqual (VID3, 0xFFFF))
            {
                If (LEqual (And (RSR3, One), One))
                {
                    Store (0xFF, RSR3)
                    Store (0x80, PMC3)
                    Notify (\_SB.PCI0.PEX3, 0x02)
                }
            }

            If (LNotEqual (VID4, 0xFFFF))
            {
                If (LEqual (And (RSR4, One), One))
                {
                    Store (0xFF, RSR4)
                    Store (0x80, PMC4)
                    Notify (\_SB.PCI0.PEX4, 0x02)
                }
            }

            If (LNotEqual (VID5, 0xFFFF))
            {
                If (LEqual (And (RSR5, One), One))
                {
                    Store (0xFF, RSR5)
                    Store (0x80, PMC5)
                    Notify (\_SB.PCI0.PEX5, 0x02)
                }
            }

            \RMDT.P1 ("GPE _L09 exit")
        }
    }

    Scope (_SB)
    {
        Device (PWRB)
        {
            Name (_CID, EisaId ("PNP0C0C"))  // _CID: Compatible ID
            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0B)
            }
        }

        Device (SLPB)
        {
            Name (_HID, EisaId ("PNP0C0E"))  // _HID: Hardware ID
        }

        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A03"))  // _HID: Hardware ID
            Name (_ADR, Zero)  // _ADR: Address
            Name (_UID, One)  // _UID: Unique ID
            Name (_BBN, Zero)  // _BBN: BIOS Bus Number
            Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
            {
                If (LEqual (OSFL, 0x02))
                {
                    Return (0x02)
                }
                Else
                {
                    Return (0x03)
                }
            }

            Method (_STA, 0, NotSerialized)  // _STA: Status
            {
                Return (0x0F)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    WordBusNumber (ResourceConsumer, MinNotFixed, MaxNotFixed, PosDecode,
                        0x0000,             // Granularity
                        0x0000,             // Range Minimum
                        0x00FF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0100,             // Length
                        ,, )
                    IO (Decode16,
                        0x0CF8,             // Range Minimum
                        0x0CF8,             // Range Maximum
                        0x01,               // Alignment
                        0x08,               // Length
                        )
                    WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x0000,             // Granularity
                        0x0000,             // Range Minimum
                        0x0CF7,             // Range Maximum
                        0x0000,             // Translation Offset
                        0x0CF8,             // Length
                        ,, , TypeStatic)
                    WordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                        0x0000,             // Granularity
                        0x0D00,             // Range Minimum
                        0xFFFF,             // Range Maximum
                        0x0000,             // Translation Offset
                        0xF300,             // Length
                        ,, , TypeStatic)
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x000A0000,         // Range Minimum
                        0x000BFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0x00020000,         // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x000C0000,         // Range Minimum
                        0x000DFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0x00020000,         // Length
                        ,, , AddressRangeMemory, TypeStatic)
                    DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                        0x00000000,         // Granularity
                        0x00100000,         // Range Minimum
                        0xFEBFFFFF,         // Range Maximum
                        0x00000000,         // Translation Offset
                        0xFEB00000,         // Length
                        ,, _Y00, AddressRangeMemory, TypeStatic)
                })
                CreateDWordField (BUF0, \_SB.PCI0._CRS._Y00._MIN, TCMM)  // _MIN: Minimum Base Address
                CreateDWordField (BUF0, \_SB.PCI0._CRS._Y00._LEN, TOMM)  // _LEN: Length
                Add (AMEM, 0x00060000, TCMM)
                Add (TCMM, 0x00010000, TCMM)
                Subtract (0xFEC00000, TCMM, TOMM)
                Return (BUF0)
            }

            Name (PICM, Package (0x1A)
            {
                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    LNK0, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    LNKE, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    LNKB, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    LNK1, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    LNKA, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    LNKF, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    LNKC, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    LNKD, 
                    Zero
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    LNKC, 
                    Zero
                }
            })
            Name (APIC, Package (0x1A)
            {
                Package (0x04)
                {
                    0x0002FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0002FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001BFFFF, 
                    Zero, 
                    Zero, 
                    0x16
                }, 

                Package (0x04)
                {
                    0x0019FFFF, 
                    Zero, 
                    Zero, 
                    0x14
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x0001FFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    Zero, 
                    Zero, 
                    0x11
                }, 

                Package (0x04)
                {
                    0x001CFFFF, 
                    One, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    Zero, 
                    Zero, 
                    0x17
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    One, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001DFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    Zero, 
                    Zero, 
                    0x10
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    One, 
                    Zero, 
                    0x15
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x03, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001AFFFF, 
                    0x02, 
                    Zero, 
                    0x12
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    Zero, 
                    Zero, 
                    0x13
                }, 

                Package (0x04)
                {
                    0x001FFFFF, 
                    One, 
                    Zero, 
                    0x12
                }
            })
            Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
            {
                If (LNot (PICF))
                {
                    Return (PICM)
                }
                Else
                {
                    Return (APIC)
                }
            }

            Device (PEX0)
            {
                Name (_ADR, 0x001C0000)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE0, PCI_Config, Zero, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX0.PCE0, ByteAcc, NoLock, Preserve)
                    {
                        VID0,   16, 
                        Offset (0x62), 
                        RSR0,   8, 
                        Offset (0xDF), 
                        PMC0,   8
                    }
                }

                Name (PIC0, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }
                })
                Name (API0, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LNot (PICF))
                    {
                        Return (PIC0)
                    }
                    Else
                    {
                        Return (API0)
                    }
                }
            }

            Device (PEX1)
            {
                Name (_ADR, 0x001C0001)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE1, PCI_Config, Zero, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX1.PCE1, ByteAcc, NoLock, Preserve)
                    {
                        VID1,   16, 
                        Offset (0x62), 
                        RSR1,   8, 
                        Offset (0xDF), 
                        PMC1,   8
                    }
                }

                Name (PIC1, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKA, 
                        Zero
                    }
                })
                Name (API1, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LNot (PICF))
                    {
                        Return (PIC1)
                    }
                    Else
                    {
                        Return (API1)
                    }
                }
            }

            Device (PEX2)
            {
                Name (_ADR, 0x001C0002)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE2, PCI_Config, Zero, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX2.PCE2, ByteAcc, NoLock, Preserve)
                    {
                        VID2,   16, 
                        Offset (0x62), 
                        RSR2,   8, 
                        Offset (0xDF), 
                        PMC2,   8
                    }
                }

                Name (PIC2, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKB, 
                        Zero
                    }
                })
                Name (API2, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x11
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LNot (PICF))
                    {
                        Return (PIC2)
                    }
                    Else
                    {
                        Return (API2)
                    }
                }
            }

            Device (PEX3)
            {
                Name (_ADR, 0x001C0003)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE3, PCI_Config, Zero, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX3.PCE3, ByteAcc, NoLock, Preserve)
                    {
                        VID3,   16, 
                        Offset (0x62), 
                        RSR3,   8, 
                        Offset (0xDF), 
                        PMC3,   8
                    }
                }

                Name (PIC3, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKC, 
                        Zero
                    }
                })
                Name (API3, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x12
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LNot (PICF))
                    {
                        Return (PIC3)
                    }
                    Else
                    {
                        Return (API3)
                    }
                }
            }

            Device (PEX4)
            {
                Name (_ADR, 0x001C0004)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE4, PCI_Config, Zero, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX4.PCE4, ByteAcc, NoLock, Preserve)
                    {
                        VID4,   16, 
                        Offset (0x62), 
                        RSR4,   8, 
                        Offset (0xDF), 
                        PMC4,   8
                    }
                }

                Name (PIC4, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKB, 
                        Zero
                    }
                })
                Name (API4, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LNot (PICF))
                    {
                        Return (PIC4)
                    }
                    Else
                    {
                        Return (API4)
                    }
                }
            }

            Device (PEX5)
            {
                Name (_ADR, 0x001C0005)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x09, 
                        0x05
                    })
                }

                OperationRegion (PCE5, PCI_Config, Zero, 0xFF)
                Scope (\)
                {
                    Field (\_SB.PCI0.PEX5.PCE5, ByteAcc, NoLock, Preserve)
                    {
                        VID5,   16, 
                        Offset (0x62), 
                        RSR5,   8, 
                        Offset (0xDF), 
                        PMC5,   8
                    }
                }

                Name (PIC5, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKC, 
                        Zero
                    }
                })
                Name (API5, Package (0x04)
                {
                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x10
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LNot (PICF))
                    {
                        Return (PIC5)
                    }
                    Else
                    {
                        Return (API5)
                    }
                }
            }

            Device (HUB0)
            {
                Name (_ADR, 0x001E0000)  // _ADR: Address
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    Return (0x0F)
                }

                Name (PICM, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        LNKA, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        LNKB, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        LNKC, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        LNKD, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        LNKF, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        LNK0, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        LNK1, 
                        Zero
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        LNKE, 
                        Zero
                    }
                })
                Name (APIC, Package (0x08)
                {
                    Package (0x04)
                    {
                        0x0001FFFF, 
                        Zero, 
                        Zero, 
                        0x10
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        One, 
                        Zero, 
                        0x11
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x02, 
                        Zero, 
                        0x12
                    }, 

                    Package (0x04)
                    {
                        0x0001FFFF, 
                        0x03, 
                        Zero, 
                        0x13
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        Zero, 
                        Zero, 
                        0x15
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        One, 
                        Zero, 
                        0x16
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x02, 
                        Zero, 
                        0x17
                    }, 

                    Package (0x04)
                    {
                        0xFFFF, 
                        0x03, 
                        Zero, 
                        0x14
                    }
                })
                Method (_PRT, 0, NotSerialized)  // _PRT: PCI Routing Table
                {
                    If (LNot (PICF))
                    {
                        Return (PICM)
                    }
                    Else
                    {
                        Return (APIC)
                    }
                }

                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x0B, 
                        0x05
                    })
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x02)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x16, 0x29, 0x00, 0x00                         
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }

                OperationRegion (PREV, PCI_Config, 0x08, One)
                Scope (\)
                {
                    Field (\_SB.PCI0.LPCB.PREV, ByteAcc, NoLock, Preserve)
                    {
                        REV0,   8
                    }
                }

                OperationRegion (PIRQ, PCI_Config, 0x60, 0x04)
                Scope (\)
                {
                    Field (\_SB.PCI0.LPCB.PIRQ, ByteAcc, NoLock, Preserve)
                    {
                        PIRA,   8, 
                        PIRB,   8, 
                        PIRC,   8, 
                        PIRD,   8
                    }
                }

                OperationRegion (PIR2, PCI_Config, 0x68, 0x04)
                Scope (\)
                {
                    Field (\_SB.PCI0.LPCB.PIR2, ByteAcc, NoLock, Preserve)
                    {
                        PIRE,   8, 
                        PIRF,   8, 
                        PIRG,   8, 
                        PIRH,   8
                    }
                }

                OperationRegion (LPIO, PCI_Config, 0x80, 0x0E)
                Scope (\)
                {
                    Field (\_SB.PCI0.LPCB.LPIO, ByteAcc, NoLock, Preserve)
                    {
                        UAIO,   8, 
                        PRIO,   8, 
                        LPE1,   8, 
                        LPE2,   8, 
                        GN1L,   8, 
                        GN1H,   8, 
                        GN2L,   8, 
                        GN2H,   8
                    }

                    Method (DISD, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            And (LPE1, 0xFE, LPE1)
                        }

                        If (LEqual (Arg0, One))
                        {
                            And (LPE1, 0xFD, LPE1)
                        }

                        If (LEqual (Arg0, 0x02))
                        {
                            And (LPE1, 0xFB, LPE1)
                        }

                        If (LEqual (Arg0, 0x03))
                        {
                            And (LPE1, 0xF7, LPE1)
                        }

                        If (LEqual (Arg0, 0x04))
                        {
                            And (LPE2, 0xFC, LPE2)
                        }

                        If (LEqual (Arg0, 0x05))
                        {
                            And (LPE1, 0xDF, LPE1)
                        }

                        If (LEqual (Arg0, 0x06))
                        {
                            And (GN2L, 0xFE, GN2L)
                        }
                    }

                    Method (CKIO, 2, NotSerialized)
                    {
                        If (LEqual (Arg1, Zero))
                        {
                            Or (LPE1, One, LPE1)
                            And (UAIO, 0xF0, Local0)
                            If (LEqual (Arg0, 0x03F8))
                            {
                                Or (Local0, Zero, UAIO)
                            }

                            If (LEqual (Arg0, 0x02F8))
                            {
                                Or (Local0, One, UAIO)
                            }

                            If (LEqual (Arg0, 0x02E8))
                            {
                                Or (Local0, 0x05, UAIO)
                            }

                            If (LEqual (Arg0, 0x03E8))
                            {
                                Or (Local0, 0x07, UAIO)
                            }
                        }

                        If (LEqual (Arg1, One))
                        {
                            Or (LPE1, 0x02, LPE1)
                            And (UAIO, 0x0F, Local0)
                            If (LEqual (Arg0, 0x03F8))
                            {
                                Or (Local0, Zero, UAIO)
                            }

                            If (LEqual (Arg0, 0x02F8))
                            {
                                Or (Local0, 0x10, UAIO)
                            }

                            If (LEqual (Arg0, 0x02E8))
                            {
                                Or (Local0, 0x50, UAIO)
                            }

                            If (LEqual (Arg0, 0x03E8))
                            {
                                Or (Local0, 0x70, UAIO)
                            }
                        }

                        If (LEqual (Arg1, 0x02))
                        {
                            Or (LPE1, 0x04, LPE1)
                            And (PRIO, 0xFC, Local0)
                            If (LEqual (Arg0, 0x0378))
                            {
                                Or (Local0, Zero, PRIO)
                            }

                            If (LEqual (Arg0, 0x0278))
                            {
                                Or (Local0, One, PRIO)
                            }

                            If (LEqual (Arg0, 0x03BC))
                            {
                                Or (Local0, 0x02, PRIO)
                            }
                        }

                        If (LEqual (Arg1, 0x03))
                        {
                            Or (LPE1, 0x08, LPE1)
                        }

                        If (LEqual (Arg1, 0x04))
                        {
                            If (LEqual (Arg0, 0x0201))
                            {
                                Or (LPE2, One, LPE2)
                            }

                            If (LEqual (Arg0, 0x0209))
                            {
                                Or (LPE2, 0x02, LPE2)
                            }
                        }

                        If (LEqual (Arg1, 0x06))
                        {
                            If (LNotEqual (Arg0, 0xFFFF))
                            {
                                And (Arg0, 0xFF, Local0)
                                Or (Local0, One, GN2L)
                                ShiftRight (Arg0, 0x08, GN2H)
                            }
                            Else
                            {
                                Store (Zero, GN2H)
                                Store (Zero, GN2L)
                            }
                        }
                    }
                }

                Scope (\)
                {
                    Method (SLDM, 2, NotSerialized)
                    {
                    }
                }

                Scope (\)
                {
                    OperationRegion (SCPP, SystemIO, 0xB2, One)
                    Field (SCPP, ByteAcc, NoLock, Preserve)
                    {
                        SMIP,   8
                    }
                }

                Method (^_INI, 0, NotSerialized)  // _INI: Initialize
                {
                    \RMDT.P2 ("in Method _INI, _OS = ", _OS)
                    Store (0x59, SMIP)
                    Store (Zero, OSFL)
                    Store (0x04, OSFX)
                    Store (One, AMAC)
                    \RMDT.P6 ("Exit Method _INI, SMIP = ", SMIP, "OSFL =", OSFL, "OSFX =", OSFX)
                }

                Scope (\)
                {
                    Method (OSTP, 0, NotSerialized)
                    {
                        If (LEqual (OSFX, One))
                        {
                            Store (0x56, SMIP)
                        }

                        If (LEqual (OSFX, 0x02))
                        {
                            Store (0x57, SMIP)
                        }

                        If (LEqual (OSFX, Zero))
                        {
                            Store (0x58, SMIP)
                        }

                        If (LEqual (OSFX, 0x03))
                        {
                            Store (0x59, SMIP)
                        }

                        If (LEqual (OSFX, 0x04))
                        {
                            Store (0x59, SMIP)
                        }
                    }
                }

                Device (SYSR)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, One)  // _UID: Unique ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0022,             // Range Minimum
                            0x0022,             // Range Maximum
                            0x01,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x0044,             // Range Minimum
                            0x0044,             // Range Maximum
                            0x01,               // Alignment
                            0x1C,               // Length
                            )
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0062,             // Range Minimum
                            0x0062,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x0B,               // Length
                            )
                        IO (Decode16,
                            0x0074,             // Range Minimum
                            0x0074,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                        IO (Decode16,
                            0x0091,             // Range Minimum
                            0x0091,             // Range Maximum
                            0x01,               // Alignment
                            0x03,               // Length
                            )
                        IO (Decode16,
                            0x00A2,             // Range Minimum
                            0x00A2,             // Range Maximum
                            0x01,               // Alignment
                            0x1E,               // Length
                            )
                        IO (Decode16,
                            0x00E0,             // Range Minimum
                            0x00E0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0290,             // Range Minimum
                            0x0290,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IO (Decode16,
                            0x0880,             // Range Minimum
                            0x0880,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        DMA (Compatibility, BusMaster, Transfer8, )
                            {4}
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0094,             // Range Minimum
                            0x0094,             // Range Maximum
                            0x01,               // Alignment
                            0x0C,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))  // _HID: Hardware ID
                    Name (ATT5, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Name (ATT6, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x00,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (ATT6)
                    }
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))  // _HID: Hardware ID
                    Name (ATT3, ResourceTemplate ()
                    {
                        IRQNoFlags ()
                            {0}
                        IRQNoFlags ()
                            {8}
                        Memory32Fixed (ReadWrite,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                    Name (ATT4, ResourceTemplate ()
                    {
                    })
                    Method (_STA, 0, NotSerialized)  // _STA: Status
                    {
                        Return (0x0F)
                    }

                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (ATT3)
                    }
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))  // _HID: Hardware ID
                    Name (ATT0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (ATT1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x00,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Return (ATT0)
                    }
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))  // _HID: Hardware ID
                    Name (_CRS, ResourceTemplate ()  // _CRS: Current Resource Settings
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Scope (\)
                {
                    OperationRegion (WIN1, SystemIO, 0x2E, 0x02)
                    Field (WIN1, ByteAcc, NoLock, Preserve)
                    {
                        INDP,   8, 
                        DATP,   8
                    }

                    IndexField (INDP, DATP, ByteAcc, NoLock, Preserve)
                    {
                        Offset (0x02), 
                        CFG,    8, 
                        Offset (0x07), 
                        LDN,    8, 
                        Offset (0x20), 
                        IDHI,   8, 
                        IDLO,   8, 
                        POWC,   8, 
                        Offset (0x30), 
                        ACTR,   8, 
                        Offset (0x60), 
                        IOAH,   8, 
                        IOAL,   8, 
                        IO2H,   8, 
                        IO2L,   8, 
                        Offset (0x70), 
                        INTR,   8, 
                        Offset (0x72), 
                        INT1,   8, 
                        Offset (0x74), 
                        DMCH,   8, 
                        Offset (0xF0), 
                        OPT1,   8, 
                        OPT2,   8, 
                        OPT3,   8
                    }

                    Method (ENFG, 0, NotSerialized)
                    {
                        Store (0x87, INDP)
                        Store (One, INDP)
                        Store (0x55, INDP)
                        Store (0x55, INDP)
                        Or (POWC, 0x80, POWC)
                    }

                    Method (EXFG, 0, NotSerialized)
                    {
                        Store (0x02, CFG)
                    }

                    Method (GSRG, 1, NotSerialized)
                    {
                        Store (Arg0, INDP)
                        Return (DATP)
                    }

                    Method (SSRG, 2, NotSerialized)
                    {
                        Store (Arg0, INDP)
                        Store (Arg1, DATP)
                    }
                }

                Device (PMIO)
                {
                    Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
                    Name (_UID, 0x02)  // _UID: Unique ID
                    Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                    {
                        Name (BUF0, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0400,             // Range Minimum
                                0x0400,             // Range Maximum
                                0x01,               // Alignment
                                0xC0,               // Length
                                )
                        })
                        Return (BUF0)
                    }
                }
            }

            Device (GIGE)
            {
                Name (_ADR, 0x00190000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x05
                    })
                }
            }

            Device (UHC1)
            {
                Name (_ADR, 0x001D0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x03, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x34, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x01                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "UHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (UHC2)
            {
                Name (_ADR, 0x001D0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x04, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x35, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x02                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "UHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (UHC3)
            {
                Name (_ADR, 0x001D0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0C, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x36, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x03                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "UHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (UHC4)
            {
                Name (_ADR, 0x001A0000)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0E, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x37, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x04                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "UHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (UHC5)
            {
                Name (_ADR, 0x001A0001)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x05, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x38, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x05                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "UHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (UHC6)
            {
                Name (_ADR, 0x001A0002)  // _ADR: Address
                OperationRegion (BAR0, PCI_Config, 0xC4, One)
                Field (BAR0, ByteAcc, NoLock, Preserve)
                {
                    USBW,   2, 
                    Offset (0x01)
                }

                Method (_S3D, 0, NotSerialized)  // _S3D: S3 Device State
                {
                    Return (0x02)
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (Arg0)
                    {
                        Store (0x03, USBW)
                    }
                    Else
                    {
                        Store (Zero, USBW)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x20, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x39, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x06                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "UHCI"
                            }, 

                            "AAPL,current-available", 
                            0x04B0, 
                            "AAPL,current-extra", 
                            0x02BC, 
                            "AAPL,current-in-sleep", 
                            0x03E8, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (EHC1)
            {
                Name (_ADR, 0x001D0007)  // _ADR: Address
                OperationRegion (PMCS, PCI_Config, 0x54, 0x02)
                Field (PMCS, WordAcc, NoLock, Preserve)
                {
                        ,   15, 
                    PMES,   1
                }

                OperationRegion (PWCR, PCI_Config, 0x62, 0x02)
                Field (PWCR, AnyAcc, NoLock, Preserve)
                {
                    URE2,   9
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (LEqual (Arg0, Zero))
                    {
                        Store (Zero, URE2)
                    }

                    If (LEqual (Arg0, One))
                    {
                        Store (0x01FF, URE2)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x3A, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x07                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x05DC, 
                            "AAPL,current-extra", 
                            0x04B0, 
                            "AAPL,current-in-sleep", 
                            0x09C4, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (EHC2)
            {
                Name (_ADR, 0x001A0007)  // _ADR: Address
                OperationRegion (PMCS, PCI_Config, 0x54, 0x02)
                Field (PMCS, WordAcc, NoLock, Preserve)
                {
                        ,   15, 
                    PMES,   1
                }

                OperationRegion (PWCR, PCI_Config, 0x62, 0x02)
                Field (PWCR, AnyAcc, NoLock, Preserve)
                {
                    URE2,   9
                }

                Method (_PSW, 1, NotSerialized)  // _PSW: Power State Wake
                {
                    If (LEqual (Arg0, Zero))
                    {
                        Store (Zero, URE2)
                    }

                    If (LEqual (Arg0, One))
                    {
                        Store (0x01FF, URE2)
                    }
                }

                Name (_PRW, Package (0x02)  // _PRW: Power Resources for Wake
                {
                    0x0D, 
                    0x03
                })
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x0F)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x3C, 0x3A, 0x00, 0x00                         
                            }, 

                            "AAPL,clock-id", 
                            Buffer (One)
                            {
                                 0x08                                           
                            }, 

                            "built-in", 
                            Buffer (One)
                            {
                                 0x00                                           
                            }, 

                            "device_type", 
                            Buffer (0x05)
                            {
                                "EHCI"
                            }, 

                            "AAPL,current-available", 
                            0x05DC, 
                            "AAPL,current-extra", 
                            0x04B0, 
                            "AAPL,current-in-sleep", 
                            0x09C4, 
                            Buffer (One)
                            {
                                 0x00                                           
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (SATA)
            {
                Name (_ADR, 0x001F0002)  // _ADR: Address
                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x02)
                        {
                            "device-id", 
                            Buffer (0x04)
                            {
                                 0x81, 0x26, 0x00, 0x00                         
                            }
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Device (SBUS)
            {
                Name (_ADR, 0x001F0003)  // _ADR: Address
                OperationRegion (PBAS, PCI_Config, 0x20, 0x02)
                Field (PBAS, ByteAcc, NoLock, Preserve)
                {
                    BAS0,   16
                }

                Method (SMBB, 0, NotSerialized)
                {
                    And (BAS0, 0xFFFE, Local0)
                    Return (Local0)
                }
            }

            Device (BUS0)
            {
                Name (_CID, "smbus")  // _CID: Compatible ID
                Name (_ADR, Zero)  // _ADR: Address
                Device (DVL0)
                {
                    Name (_ADR, 0x57)  // _ADR: Address
                    Name (_CID, "diagsvault")  // _CID: Compatible ID
                    Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                    {
                        Store (Package (0x03)
                            {
                                "address", 
                                0x57, 
                                Buffer (One)
                                {
                                     0x00                                           
                                }
                            }, Local0)
                        DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                        Return (Local0)
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)  // _ADR: Address
                Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
                {
                    Return (Package (0x02)
                    {
                        0x0D, 
                        0x05
                    })
                }

                Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
                {
                    Store (Package (0x08)
                        {
                            "MaximumBootBeepVolume", 
                            Buffer (One)
                            {
                                 0x5D                                           
                            }, 

                            "hda-gfx", 
                            Buffer (0x0A)
                            {
                                "onboard-1"
                            }, 

                            "layout-id", 
                            Unicode ("\x01"), 
                            "PinConfigurations", 
                            Buffer (Zero) {}
                        }, Local0)
                    DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                    Return (Local0)
                }
            }

            Name (BUFA, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {3,4,5,6,7,9,10,11,12,14,15}
            })
            Name (BUFB, ResourceTemplate ()
            {
                IRQ (Level, ActiveLow, Shared, )
                    {}
            })
            CreateWordField (BUFB, One, IRQV)
            Device (LNKA)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, One)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRA, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRA, 0x80, PIRA)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRA, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRA)
                }
            }

            Device (LNKB)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, 0x02)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRB, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRB, 0x80, PIRB)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRB, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRB)
                }
            }

            Device (LNKC)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, 0x03)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRC, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRC, 0x80, PIRC)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRC, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRC)
                }
            }

            Device (LNKD)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, 0x04)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRD, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRD, 0x80, PIRD)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRD, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRD)
                }
            }

            Device (LNKE)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, 0x05)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRE, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRE, 0x80, PIRE)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRE, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRE)
                }
            }

            Device (LNKF)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, 0x06)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRF, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRF, 0x80, PIRF)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRF, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRF)
                }
            }

            Device (LNK0)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, 0x07)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRG, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRG, 0x80, PIRG)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRG, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRG)
                }
            }

            Device (LNK1)
            {
                Name (_HID, EisaId ("PNP0C0F"))  // _HID: Hardware ID
                Name (_UID, 0x08)  // _UID: Unique ID
                Method (_STA, 0, NotSerialized)  // _STA: Status
                {
                    And (PIRH, 0x80, Local0)
                    If (LEqual (Local0, 0x80))
                    {
                        Return (0x09)
                    }
                    Else
                    {
                        Return (0x0B)
                    }
                }

                Method (_PRS, 0, NotSerialized)  // _PRS: Possible Resource Settings
                {
                    Return (BUFA)
                }

                Method (_DIS, 0, NotSerialized)  // _DIS: Disable Device
                {
                    Or (PIRH, 0x80, PIRH)
                }

                Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
                {
                    And (PIRH, 0x0F, Local0)
                    ShiftLeft (One, Local0, IRQV)
                    Return (BUFB)
                }

                Method (_SRS, 1, NotSerialized)  // _SRS: Set Resource Settings
                {
                    CreateWordField (Arg0, One, IRQ1)
                    FindSetRightBit (IRQ1, Local0)
                    Decrement (Local0)
                    Store (Local0, PIRH)
                }
            }

            Method (_PRW, 0, NotSerialized)  // _PRW: Power Resources for Wake
            {
                Return (Package (0x02)
                {
                    0x0B, 
                    0x05
                })
            }
        }

        Device (MCHC)
        {
            Name (_HID, EisaId ("PNP0C01"))  // _HID: Hardware ID
            Method (_DSM, 4, NotSerialized)  // _DSM: Device-Specific Method
            {
                Store (Package (0x0A)
                    {
                        "device-id", 
                        Buffer (0x04)
                        {
                             0x00, 0x2A, 0x00, 0x00                         
                        }, 

                        "revision-id", 
                        Unicode ("\x03"), 
                        "subsystem-id", 
                        Buffer (0x04)
                        {
                             0xA0, 0x00, 0x00, 0x00                         
                        }, 

                        "subsystem-vendor-id", 
                        Buffer (0x04)
                        {
                             0x6B, 0x10, 0x00, 0x00                         
                        }, 

                        "vendor-id", 
                        Buffer (0x04)
                        {
                             0x86, 0x80, 0x00, 0x00                         
                        }
                    }, Local0)
                DTGP (Arg0, Arg1, Arg2, Arg3, RefOf (Local0))
                Return (Local0)
            }

            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadOnly,
                        0x000F0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00200000,         // Address Length
                        _Y02)
                    Memory32Fixed (ReadWrite,
                        0xFED00000,         // Address Base
                        0x00000100,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x00060000,         // Address Length
                        _Y01)
                    Memory32Fixed (ReadWrite,
                        0x00000000,         // Address Base
                        0x000A0000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x00100000,         // Address Base
                        0x00000000,         // Address Length
                        _Y03)
                    Memory32Fixed (ReadWrite,
                        0xFEC00000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED14000,         // Address Base
                        0x0000A000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFED20000,         // Address Base
                        0x00080000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFEE00000,         // Address Base
                        0x00001000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFFB00000,         // Address Base
                        0x00080000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0xFFF00000,         // Address Base
                        0x00100000,         // Address Length
                        )
                    Memory32Fixed (ReadWrite,
                        0x000E0000,         // Address Base
                        0x00010000,         // Address Length
                        )
                })
                CreateDWordField (BUF0, \_SB.MCHC._CRS._Y01._BAS, ACMM)  // _BAS: Base Address
                CreateDWordField (BUF0, \_SB.MCHC._CRS._Y01._LEN, ASSM)  // _LEN: Length
                CreateDWordField (BUF0, \_SB.MCHC._CRS._Y02._BAS, RMA5)  // _BAS: Base Address
                CreateDWordField (BUF0, \_SB.MCHC._CRS._Y02._LEN, RSS5)  // _LEN: Length
                CreateDWordField (BUF0, \_SB.MCHC._CRS._Y03._LEN, EXTM)  // _LEN: Length
                And (AMEM, 0xFFF00000, Local0)
                Add (Local0, 0x00100000, RMA5)
                Store (0x00100000, RSS5)
                Subtract (AMEM, 0x00100000, EXTM)
                Store (AMEM, ACMM)
                And (AMEM, 0x000FFFFF, Local0)
                Subtract (0x00100000, Local0, ASSM)
                Return (BUF0)
            }
        }

        Device (PCI0.LPCB.FWH)
        {
            Name (_HID, EisaId ("INT0800"))  // _HID: Hardware ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (FWH0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xFFB80000,         // Address Base
                        0x00080000,         // Address Length
                        )
                })
                Return (FWH0)
            }
        }

        Device (PCI0.EXPL)
        {
            Name (_HID, EisaId ("PNP0C02"))  // _HID: Hardware ID
            Name (_UID, 0x04)  // _UID: Unique ID
            Method (_CRS, 0, NotSerialized)  // _CRS: Current Resource Settings
            {
                Name (BUF0, ResourceTemplate ()
                {
                    Memory32Fixed (ReadWrite,
                        0xE0000000,         // Address Base
                        0x10000000,         // Address Length
                        )
                })
                Return (BUF0)
            }
        }
    }

    OperationRegion (TEMM, SystemMemory, 0x000FF810, 0x0C)
    Field (TEMM, WordAcc, NoLock, Preserve)
    {
        TP1H,   16, 
        TP1L,   16, 
        TP2H,   16, 
        TP2L,   16, 
        TRPC,   16, 
        SENF,   16
    }

    Name (TVAR, Buffer (0x05)
    {
         0x00, 0x00, 0x00, 0x00, 0x00                   
    })
    CreateByteField (TVAR, Zero, PLCY)
    CreateWordField (TVAR, One, CTOS)
    CreateWordField (TVAR, 0x03, CTHY)
    Name (TBUF, Buffer (0x04)
    {
         0x00, 0x00, 0x00, 0x00                         
    })
    CreateByteField (TBUF, Zero, DB00)
    CreateByteField (TBUF, One, DB01)
    CreateWordField (TBUF, Zero, DW00)
    CreateWordField (TBUF, 0x02, DW01)
    CreateDWordField (TBUF, Zero, DATD)
    OperationRegion (IP, SystemIO, 0x0295, 0x02)
    Field (IP, ByteAcc, NoLock, Preserve)
    {
        INDX,   8, 
        DAT0,   8
    }

    Method (SCFG, 1, NotSerialized)
    {
        SBYT (0x40, Arg0)
    }

    Method (STOS, 3, NotSerialized)
    {
        Divide (Arg2, 0x0A, Local0)
        If (LGreater (Local0, 0x0111))
        {
            Subtract (Local0, 0x0111, Local0)
        }
        Else
        {
            Subtract (0x0111, Local0, Local0)
            Or (Local0, 0x80, Local0)
        }

        SBYT (0x40, Local0)
    }

    Method (STHY, 3, NotSerialized)
    {
        Divide (Arg2, 0x0A, Local0)
        If (LGreater (Local0, 0x0111))
        {
            Subtract (Local0, 0x0111, Local0)
        }
        Else
        {
            Subtract (0x0111, Local0, Local0)
            Or (Local0, 0x80, Local0)
        }

        SBYT (0x41, Local0)
    }

    Method (RTMP, 0, NotSerialized)
    {
        Store (GBYT (0x29), Local0)
        FindSetLeftBit (Local0, Local1)
        If (LEqual (Local1, 0x08))
        {
            And (Local0, 0x7F, Local0)
            Multiply (Local0, 0x0A, Local0)
            Subtract (0x0AAC, Local0, Local0)
        }
        Else
        {
            Multiply (Local0, 0x0A, Local0)
            Add (0x0AAC, Local0, Local0)
        }

        If (LEqual (SSHU, One))
        {
            Return (0x0C3C)
        }
        Else
        {
            Return (Local0)
        }
    }

    Method (SBYT, 2, NotSerialized)
    {
        Store (Arg0, INDX)
        Store (Arg1, DAT0)
    }

    Method (GBYT, 1, NotSerialized)
    {
        Store (Arg0, INDX)
        Store (DAT0, Local0)
        Return (Local0)
    }

    Method (SFAN, 1, NotSerialized)
    {
        And (SENF, 0x02, Local0)
        If (LEqual (Local0, Zero))
        {
            If (LEqual (Arg0, Zero))
            {
                FOFF ()
            }
            Else
            {
                FON ()
            }
        }
    }

    Method (FON, 0, NotSerialized)
    {
    }

    Method (FOFF, 0, NotSerialized)
    {
    }

    Scope (_TZ)
    {
        Device (FAN)
        {
            Name (_HID, EisaId ("PNP0C0B"))  // _HID: Hardware ID
            Method (_INI, 0, NotSerialized)  // _INI: Initialize
            {
                Store (TP1H, CTOS)
                Store (TP1L, CTHY)
            }
        }

        ThermalZone (THRM)
        {
            Name (_AL0, Package (0x01)  // _ALx: Active List
            {
                FAN
            })
            Method (_AC0, 0, NotSerialized)  // _ACx: Active Cooling
            {
                If (Or (PLCY, PLCY, Local7))
                {
                    Return (TP2H)
                }
                Else
                {
                    Return (TP1H)
                }
            }

            Name (_PSL, Package (0x01)  // _PSL: Passive List
            {
                \_PR.CPU0
            })
            Name (_TSP, 0x3C)  // _TSP: Thermal Sampling Period
            Name (_TC1, 0x04)  // _TC1: Thermal Constant 1
            Name (_TC2, 0x03)  // _TC2: Thermal Constant 2
            Method (_PSV, 0, NotSerialized)  // _PSV: Passive Temperature
            {
                If (Or (PLCY, PLCY, Local7))
                {
                    Return (TP1H)
                }
                Else
                {
                    Return (TP2H)
                }
            }

            Method (_CRT, 0, NotSerialized)  // _CRT: Critical Temperature
            {
                Return (TRPC)
            }

            Method (_TMP, 0, NotSerialized)  // _TMP: Temperature
            {
                And (SENF, One, Local6)
                If (LEqual (Local6, One))
                {
                    Return (RTMP ())
                }
                Else
                {
                    Return (0x0B86)
                }
            }

            Method (_SCP, 1, NotSerialized)  // _SCP: Set Cooling Policy
            {
                If (Arg0)
                {
                    Store (One, PLCY)
                }
                Else
                {
                    Store (Zero, PLCY)
                }

                Notify (THRM, 0x81)
            }

            Method (STMP, 2, NotSerialized)
            {
                Store (Arg1, DW00)
                If (Arg0)
                {
                    STHY (DB00, DB01, DW00)
                }
                Else
                {
                    STOS (DB00, DB01, DW00)
                }
            }
        }
    }

    Device (RMDT)
    {
        Name (_HID, "RMD0000")  // _HID: Hardware ID
        Name (RING, Package (0x0100) {})
        Mutex (RTMX, 0x00)
        Name (HEAD, Zero)
        Name (TAIL, Zero)
        Method (PUSH, 1, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Add (HEAD, One, Local0)
            If (LGreaterEqual (Local0, SizeOf (RING)))
            {
                Store (Zero, Local0)
            }

            If (LNotEqual (Local0, TAIL))
            {
                Store (Arg0, Index (RING, HEAD))
                Store (Local0, HEAD)
            }

            Release (RTMX)
            Notify (RMDT, 0x80)
        }

        Method (FTCH, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Store (Zero, Local0)
            If (LNotEqual (HEAD, TAIL))
            {
                Store (DerefOf (Index (RING, TAIL)), Local0)
                Increment (TAIL)
                If (LGreaterEqual (TAIL, SizeOf (RING)))
                {
                    Store (Zero, TAIL)
                }
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (COUN, 0, NotSerialized)
        {
            Acquire (RTMX, 0xFFFF)
            Subtract (HEAD, TAIL, Local0)
            If (LLess (Local0, Zero))
            {
                Add (Local0, SizeOf (RING), Local0)
            }

            Release (RTMX)
            Return (Local0)
        }

        Method (P1, 1, NotSerialized)
        {
            PUSH (Arg0)
        }

        Method (P2, 2, Serialized)
        {
            Name (TEMP, Package (0x02) {})
            Store (Arg0, Index (TEMP, Zero))
            Store (Arg1, Index (TEMP, One))
            PUSH (TEMP)
        }

        Method (P3, 3, Serialized)
        {
            Name (TEMP, Package (0x03) {})
            Store (Arg0, Index (TEMP, Zero))
            Store (Arg1, Index (TEMP, One))
            Store (Arg2, Index (TEMP, 0x02))
            PUSH (TEMP)
        }

        Method (P4, 4, Serialized)
        {
            Name (TEMP, Package (0x04) {})
            Store (Arg0, Index (TEMP, Zero))
            Store (Arg1, Index (TEMP, One))
            Store (Arg2, Index (TEMP, 0x02))
            Store (Arg3, Index (TEMP, 0x03))
            PUSH (TEMP)
        }

        Method (P5, 5, Serialized)
        {
            Name (TEMP, Package (0x05) {})
            Store (Arg0, Index (TEMP, Zero))
            Store (Arg1, Index (TEMP, One))
            Store (Arg2, Index (TEMP, 0x02))
            Store (Arg3, Index (TEMP, 0x03))
            Store (Arg4, Index (TEMP, 0x04))
            PUSH (TEMP)
        }

        Method (P6, 6, Serialized)
        {
            Name (TEMP, Package (0x06) {})
            Store (Arg0, Index (TEMP, Zero))
            Store (Arg1, Index (TEMP, One))
            Store (Arg2, Index (TEMP, 0x02))
            Store (Arg3, Index (TEMP, 0x03))
            Store (Arg4, Index (TEMP, 0x04))
            Store (Arg5, Index (TEMP, 0x05))
            PUSH (TEMP)
        }

        Method (P7, 7, Serialized)
        {
            Name (TEMP, Package (0x07) {})
            Store (Arg0, Index (TEMP, Zero))
            Store (Arg1, Index (TEMP, One))
            Store (Arg2, Index (TEMP, 0x02))
            Store (Arg3, Index (TEMP, 0x03))
            Store (Arg4, Index (TEMP, 0x04))
            Store (Arg5, Index (TEMP, 0x05))
            Store (Arg6, Index (TEMP, 0x06))
            PUSH (TEMP)
        }
    }
}

