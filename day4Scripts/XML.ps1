# XML

# converting to XML
Get-Service -Name s* | `
Select-Object Name, Status, StartType | `
Export-Clixml S-services.xml

Get-Service | Export-Clixml services.xml