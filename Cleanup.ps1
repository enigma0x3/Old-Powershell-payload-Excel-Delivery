$Path = "C:\Temp\persist.vbs"
If(Test-Path -Path $Path){
	Remove-Item($Path)
}

$RegKeyPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$Value = (Get-ItemProperty $RegKeyPath).Persist -eq $null
If ($Value -eq $False) {Remove-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name Persist}
Else { }
