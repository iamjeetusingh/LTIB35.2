<#
Task
------
    ask user for a service name and check the status 
    of this service.

    if service is stopped, provide options to either 
        - start this stopped service,
        - leave it / exit

    if service is running, provide options to either
        - stop this service
        - exit

    then show the updates status of the service
#>

cls
$sname = Read-Host "Enter service name: "
$svc = Get-Service -Name $sname

if( $svc.Status -eq "running" ){
    
    Write-Host "$sname is running" -ForegroundColor Green

    $ans = Read-Host "Do you want to STOP the service (y/n)" 
    switch( $ans ){
        y{ Stop-Service -Name $sname
            Write-Host "Current status of service is: " $((Get-Service -Name $sname).Status)  }
        n{ Write-Host "No changes made..." -ForegroundColor Cyan
            break;}
        default{ Write-Warning "Invalid selection" }
    }
}else{
    
    Write-Host "$sname is stopped" -ForegroundColor Red

    $ans = Read-Host "Do you want to START the service (y/n)" 
    switch( $ans ){
        y{ Start-Service -Name $sname 
        Write-Host "Current status of service is: " $((Get-Service -Name $sname).Status)}
        n{ Write-Host "No changes made..." -ForegroundColor Cyan
            break;}
        default{ Write-Warning "Invalid selection" }
    }

}