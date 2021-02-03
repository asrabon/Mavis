Import-Module .\Out-EncodedAsciiCommand.ps1
Import-Module .\Out-ObfuscatedAst.ps1
. .\Out-ObfuscatedTokenCommand.ps1
Import-Module .\Out-ObfuscatedStringCommand.ps1
Import-Module .\Out-ObfuscatedTokenCommand.ps1

New-Item .\obfuscated_scripts_ascii -ItemType directory
New-Item .\obfuscated_scripts_ast -ItemType directory
New-Item .\obfuscated_scripts_string -ItemType directory
New-Item .\obfuscated_scripts_token -ItemType directory

$deobfuscated_scripts = Get-ChildItem ".\scripts"
$path_to_deob = ".\scripts\"

$path_to_ob_ascii = ".\obfuscated_scripts_ascii\"
$path_to_ob_ast = ".\obfuscated_scripts_ast\"
$path_to_ob_string = ".\obfuscated_scripts_string\"
$path_to_ob_token = ".\obfuscated_scripts_token\"

for($s = 0; $s -lt $deobfuscated_scripts.Count; $s++){

    $path = $path_to_deob + $deobfuscated_scripts[$s]
    
    $obfuscated_file_name = $deobfuscated_scripts[$s].Name.Replace("_deobfuscated.asd", "_obfuscated.asd")
    
    Out-EncodedAsciiCommand -Path $path -NoProfile -NonInteractive -PassThru | Out-File -Append "$path_to_ob_ascii$obfuscated_file_name" -Encoding utf8
    Out-ObfuscatedAst -ScriptPath $path | Out-File -Append "$path_to_ob_ast$obfuscated_file_name" -Encoding utf8
    Out-ObfuscatedStringCommand -Path $path | Out-File -Append "$path_to_ob_string$obfuscated_file_name" -Encoding utf8
    Out-ObfuscatedTokenCommand -Path $path | Out-File -Append "$path_to_ob_token$obfuscated_file_name" -Encoding utf8

}