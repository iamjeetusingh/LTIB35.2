# fetching the data from XML file
[xml]$xmldata = Get-Content "E:\PowerShell\batch35.2\day4Scripts\books.xml"

# checking the data type of XML variable
$xmldata.GetType()

$xmldata
$xmldata.catalog
$xmldata.catalog.book
$xmldata.catalog.book | Format-Table

$xmldata.catalog.book | Select-Object id
$xmldata.catalog.book | Select-Object id, author, title, price, genre | Format-Table

$xmldata.catalog.book | Where-Object {$_.price -eq "5.95"} | Select-Object author, title, description

$xmldata.catalog.book | `
Where-Object {$_.price -eq "5.95"} | `
Select-Object author, title, description | `
Format-Table -AutoSize -Wrap
