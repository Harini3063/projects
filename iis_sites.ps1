
$websites = Get-WebSite


foreach ($website in $websites) {
    
    $websiteName = $website.Name

    $appPoolName = & "$Env:SystemRoot\system32\inetsrv\appcmd.exe" list app $website.Name /text:apppool.name

    $identityType = & "$Env:SystemRoot\system32\inetsrv\appcmd.exe" list apppool $appPoolName /text:processModel.identityType | Select-Object -First 1

    # Write-Host " $websites"
    
    Write-Host "Website Name: $websiteName"
    
    Write-Host "Logon User : $identityType"
    Write-Host "******************************************"
}
