# conversion
cls
Get-Service -Name a* | Select-Object Name, Status, StartType

# cmdlets for conversion
Get-Command -verb convertto

# converting to HTML
Get-Service -Name s* | Select-Object Name, Status, StartType | ConvertTo-Html | Out-File a-services.html

# converting to JSON
Get-Service -Name s* | Select-Object Name, Status, StartType | ConvertTo-Json | Out-File a-services.json

# converting to CSV
Get-Service -Name s* | Select-Object Name, Status, StartType | ConvertTo-Csv | Out-File S-services.csv