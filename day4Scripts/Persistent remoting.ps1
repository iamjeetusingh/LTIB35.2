# Persistent remoting

Get-Command -Noun pssession

Get-PSSession 

New-PSSession -ComputerName member1

Enter-PSSession -Id 3

Get-WindowsFeature -Name web-server

Install-WindowsFeature -Name web-server -IncludeAllSubFeature -IncludeManagementTools

Exit-PSSession

Get-PSSession 

Remove-PSSession -Id 3