cls

$websites = Get-Content .\websites.txt

# notepad.exe websites.txt

foreach ( $w in $websites){
    
    Test-Connection $w -Count 1 -ea SilentlyContinue

}