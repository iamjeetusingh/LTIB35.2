# switch statement

cls

$ans = Read-Host "
Select from the options:
    1. to check internet connection
    2. to display IP address
    3. to display MAC address
    4. Hostname
    5. Exit
"

switch($ans){
    
    1{
        if( Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue ){
            Write-Host "its pinging" -ForegroundColor Green
        }else{
            Write-Host "its NOT pinging" -ForegroundColor Red
        }}
    2{ (Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "Dhcp"}).IPAddress }
    3{ (Get-NetAdapter | Where-Object {$_.name -eq "Wi-Fi"}).MacAddress }
    4{ write-host "Your computer name is: " $(HOSTNAME.EXE) }
    5{ break }
    default{ Write-Warning "Invalid selection" }


}