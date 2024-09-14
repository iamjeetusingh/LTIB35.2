Get-PSDrive
Get-PSDrive -PSProvider Registry
Get-ChildItem HKCU:\

# creating a folder in HKCU
New-Item   -Path HKCU:\   -Name  "TestLTIb352"   -Force

# creating a registry in the abv folder
New-ItemProperty -Path HKCU:\TestLTIb352  -Name  "child"  -Value  "this is CHILD"  -Force

# change the registry key value
Set-ItemProperty -Path HKCU:\TestLTIb352 -Name "child" -Value "All are sleeping, finally last torture day...."

# removing reg key
Remove-ItemProperty -Path HKCU:\TestLTIb352 -Name "child" -Force

# removing the reg folder
Remove-Item -Path HKCU:\TestLTIb352 -Force