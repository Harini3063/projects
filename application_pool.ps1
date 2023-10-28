# Run appcmd.exe to list application pools
$appPools = & $env:SystemRoot\System32\inetsrv\appcmd.exe list apppool /text:appPool.name


foreach ($appPool in $appPools) {
    $logonUser = & $env:SystemRoot\System32\inetsrv\appcmd.exe list apppool "$appPool" /text:processModel.identityType
    
    Write-Host "Application Pool Name: $appPool"
    Write-Host "Logon User: $logonUser"
    Write-Host "------------------------------------------------"
}
