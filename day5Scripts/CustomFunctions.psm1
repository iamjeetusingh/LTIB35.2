function Get-MyDiskInfo{
    Get-WmiObject -Class Win32_LogicalDisk | Select-Object DeviceID, `
    @{ label = "FreeSpace(inGBs)" ; exp = {[math]::Round(($_.FreeSpace/1GB),2)} }, `
    @{ label = "Size(inGBs)" ; exp = {[math]::Round(($_.Size/1GB),2)} }
}