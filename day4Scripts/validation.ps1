function get-validate{
[cmdletbinding()]
    param(
        [parameter(Mandatory=$true)]
        [ValidateSet("jeetu","jarvis","batman","Hariom")]$msg
    )

    Write-Host "Hello $msg"
}

cls
get-validate -msg Hariom