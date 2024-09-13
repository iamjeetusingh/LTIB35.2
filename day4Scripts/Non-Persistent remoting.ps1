# Non-Persistent remoting

notepad.exe comp.txt

$comp = Get-Content .\comp.txt

Invoke-Command -ComputerName $comp -ScriptBlock{
    
    New-Item -Path C:\ -Name ps1234 -ItemType Directory -Force 

    New-Item -Path C:\ps1234 -Name hari423.txt -ItemType File -Force 

    Set-Content -Path C:\ps1234\hari423.txt -Value "today is FRIDAY. all are sleeping!!!!" -Force

}

