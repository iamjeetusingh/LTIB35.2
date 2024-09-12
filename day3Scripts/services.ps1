cls
foreach ($s in Get-Service){
    
    if($s.status -eq "Running"){
        Write-Host $s.DisplayName -ForegroundColor Green
    }else{
        Write-Host $s.DisplayName -ForegroundColor Red
        $s.DisplayName | Out-File stopped.txt -Append
    }

}