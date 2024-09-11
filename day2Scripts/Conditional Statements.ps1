<# 
    Conditional Statements
        - if statement
        - Nested if statement
        - if-else statement
        - Nested If-else statement
        - Switch statement
#>
cls
$a = 21
if ( $a -eq 2 ){
    Write-Host "Values are equal"
}

# ask user for a website and check of its pingable or not. 
# show pingable site in green color
# and non-pingable in red color.
cls
$site = Read-Host "Enter website to ping "

if( Test-Connection $site -Count 1 -ea SilentlyContinue ){
    Write-Host "$site is pingable" -ForegroundColor Green
}else{
    Write-Host "$site is NOT pingable" -ForegroundColor Red
}