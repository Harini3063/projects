# Get all Windows services
$services = Get-Service


foreach ($service in $services) {
    
    $serviceName = $service.DisplayName
    

    
    $serviceLogonUser = Get-WmiObject -Class Win32_Service | Where-Object { $_.Name -eq $service.Name } | Select-Object -ExpandProperty StartName

    
    Write-Host "Service Name: $serviceName"
    Write-Host "Logon User: $serviceLogonUser"
    Write-Host "*****************************************"
}

# Note: This script requires administrative privileges to access service information.
