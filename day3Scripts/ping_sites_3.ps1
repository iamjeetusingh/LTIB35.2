cls

$websites = Get-Content .\websites.txt

foreach ( $w in $websites){
    
   if( Test-Connection $w -Count 1 -ea SilentlyContinue){
    Write-Host $w -ForegroundColor Green
   }else{
    Write-Host $w -ForegroundColor Red
   }

}