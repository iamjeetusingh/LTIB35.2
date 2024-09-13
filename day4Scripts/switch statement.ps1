# switch statement
function test-website{
if( Test-Connection google.com -Count 1 -ErrorAction SilentlyContinue ){
            Write-Host "its pinging" -ForegroundColor Green
        }else{
            Write-Host "its NOT pinging" -ForegroundColor Red
        }
}
function get-myipaddr{
    (Get-NetIPAddress | Where-Object {$_.PrefixOrigin -eq "Dhcp"}).IPAddress
}
function get-mymacaddr{
    (Get-NetAdapter | Where-Object {$_.name -eq "Wi-Fi"}).MacAddress
}
function get-myhostname{
    write-host "Your computer name is: " $(HOSTNAME.EXE)
}


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
    
    1{ test-website }
    2{ get-myipaddr }
    3{ get-mymacaddr }
    4{ get-myhostname }
    5{ break }
    default{ Write-Warning "Invalid selection" }


}