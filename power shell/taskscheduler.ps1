# Get all Task Schedulers
$tasks = Get-ScheduledTask


foreach ($task in $tasks) {
   
    $taskName = $task.TaskName
    $taskLogonUser = $task.Principal.UserId
    
    
    Write-Host "Task Name: $taskName"
    Write-Host "Logon User: $taskLogonUser"
    Write-Host "******************************************"
}
