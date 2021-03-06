Write-Host  -ForegroundColor Green "Starting OSDCloud ZTI"
Start-Sleep -Seconds 5

#Change Display Resolution for Virtual Machine
if ((Get-MyComputerModel) -match 'Virtual') {
    Write-Host  -ForegroundColor Green "Setting Display Resolution to 1024x"
    Set-DisRes 1024
}

Start-OSDCloud -OSLanguage de-DE -OSBuild 20H2 -OSEdition Enterprise -ZTI

#Restart from WinPE
Write-Host  -ForegroundColor Green "Restarting in 20 seconds! Eject USB or ISO"
Start-Sleep -Seconds 20
wpeutil reboot
