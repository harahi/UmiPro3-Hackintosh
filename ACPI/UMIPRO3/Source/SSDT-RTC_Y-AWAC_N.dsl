// Necessary hotpatch
// Reference: https://github.com/daliansky/OC-little/ by daliansky
// enable RTC
// disable AWAC

DefinitionBlock ("", "SSDT", 2, "OCLT", "RTCAWAC", 0x00000000)
{
    External (STAS, FieldUnitObj)

    Scope (\)
    {
        If (_OSI ("Darwin"))
        {
            STAS = One
        }
    }
}

