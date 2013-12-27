$RegKeyPath = "HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$Value = (Get-ItemProperty $RegKeyPath).Persist -eq $null
If ($Value -eq $False) {Remove-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Run -Name Persist}
Else { }
