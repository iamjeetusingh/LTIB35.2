cls

$folderPath = "E:\PowerShell\batch35.2\day2Scripts"
$time = "1:00 PM"

Get-ChildItem -Path $folderPath -Recurse | Where-Object { 
    $_.LastWriteTime.TimeOfDay -gt ([datetime]::ParseExact($time, 'h:mm tt', $null)).TimeOfDay 
}


