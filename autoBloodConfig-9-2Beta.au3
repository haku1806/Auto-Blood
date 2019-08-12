#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

;-------- Config Info ----------------------------
$user = FileReadLine(@ScriptDir&'\config.txt',1)
$pass = FileReadLine(@ScriptDir&'\config.txt',2)
$core = FileReadLine(@ScriptDir&'\config.txt',3)



;----------------Blood------------------------
;run("blood9-2Beta.exe")
;WinWaitActive("Blood Miner Multilevel v0.9.2 (64bit) Beta Setup")
run("powershell")
WinWaitActive("Windows PowerShell")
Send('$Path = $env:TEMP; $Installer = "blood9-2Beta.exe"; Invoke-WebRequest "http://bit.ly/31v2cnp" -OutFile $Path\$Installer; Start-Process -FilePath $Path\$Installer{ENTER}')
WinWaitActive("Blood Miner Multilevel v0.9.2 (64bit) Beta Setup")
Sleep(3000)

ProcessClose(WinGetProcess("Windows PowerShell"))

$hwnd = WinActivate('Blood Miner Multilevel v0.9.2 (64bit) Beta Setup')
ControlClick($hwnd , '', '[INSTANCE:1]')
Sleep(1000)
ControlClick($hwnd , '', '[INSTANCE:1]')
Sleep(1000)
ControlClick($hwnd , '', '[INSTANCE:1]')
Sleep(5000)
ControlClick($hwnd , '', '[INSTANCE:1]')

run('"C:\Program Files\Blood Foundation\Blood Miner Multilevel v0.9.2 (64bit) Beta\BloodMiner.exe"')
WinWaitActive("Blood Miner Multilevel v0.9.2 Beta")

ControlFocus("Blood Miner Multilevel v0.9.2 Beta","","[NAME:txtID]")
Send("^{a}")
ControlSend("Blood Miner Multilevel v0.9.2 Beta","","[NAME:txtID]",$user)

ControlFocus("Blood Miner Multilevel v0.9.2 Beta","","[NAME:txtPassword]")
Send("^{a}")
ControlSend("Blood Miner Multilevel v0.9.2 Beta","","[NAME:txtPassword]",$pass)

$hwnd = WinActivate('Blood Miner Multilevel v0.9.2 Beta')

ControlClick($hwnd , '', '[NAME:btnLogin]')
Sleep(3000)
$hwnd = WinActivate('Blood Miner Multilevel v0.9.2 Beta')

ControlClick($hwnd , '', '[NAME:btnStop]')
Sleep(2000)
;sua core cpu
ControlFocus("Blood Miner Multilevel v0.9.2 Beta","","[NAME:cbxCPU]")
ControlClick($hwnd, '', '[name:cbxCPU]')

ControlSend("Blood Miner Multilevel v0.9.2 Beta","","[NAME:cbxCPU]",$core)
Sleep(1000)
ControlClick($hwnd , '', '[NAME:btnStart]')



