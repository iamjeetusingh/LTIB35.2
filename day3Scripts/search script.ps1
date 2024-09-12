cls

# fetching automatically drives
$drives = @()
$drives = (Get-PSDrive -PSProvider FileSystem).Root

# assigning drives for search
# $drives = @("D:\","E:\")
$file = "errorlogs.txt" #Read-Host "enter file name to search: "

foreach($d in $drives){
    
    $retr = Get-ChildItem -Path $d -Filter $file -Recurse -Force -ErrorAction SilentlyContinue
    
    if($retr){
        Write-Host "$($file)'s location is: "  -NoNewline
        Write-Host $retr.FullName -ForegroundColor Cyan
    }else{
        Write-Host "No such file is present in $d" -ForegroundColor Red
    }

}