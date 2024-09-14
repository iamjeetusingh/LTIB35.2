<#
CIM 
    - its the open source way to fetch the details of single or remote computer.
    

WMI
    - Windows Management Instrumentation
    - WMI = Microsoft's implementation of CIM model.
    - command
        Get-WMIObject
        gwmi


#>

Get-WmiObject -List
Get-WmiObject -List | measure

Get-WmiObject -List | Where-Object { $_.Name -match "^Win32_"}
Get-WmiObject -List | Where-Object { $_.Name -match "^Win32_"} | measure

Get-WmiObject -List | Where-Object { ($_.Name -like "Win32_*") -and ($_.Name -like "*bios") }
Get-WmiObject -List | Where-Object { $_.Name -match "bios$"}


Get-WmiObject -Class Win32_BIOS
Get-WmiObject -Class Win32_Computersystem
Get-WmiObject -Class Win32_LogicalDisk
Get-WmiObject -Class Win32_OperatingSystem

Get-WmiObject -Class Win32_Computersystem -ComputerName dc,member1 | Format-Table


Get-WmiObject -Class Win32_Computersystem
$bios = Get-WmiObject -Class Win32_BIOS

Write-Host "Your domain name is: " $((Get-WmiObject -Class Win32_Computersystem).domain)
Write-Host "Your BIOS serial number is: " $($bios.SerialNumber)

Get-WmiObject -Class win32_logical