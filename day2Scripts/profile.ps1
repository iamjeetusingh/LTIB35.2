# To create $profile if it does not exists
cls
if(Test-Path $profile){
    Write-Host "file is present" -ForegroundColor Green
}else{
    Write-Host "file is NOT present" -ForegroundColor Red

    New-Item -Path $profile -ItemType File -Force 

}