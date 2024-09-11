# Objects

Get-Date | Get-Member
Get-Process | Get-Member
Get-Service | gm

# PS Custom Objects
$obj = New-Object -TypeName psobject
$obj.GetType()
$obj | Get-Member

# adding a new member to the object
Add-Member -InputObject $obj -MemberType NoteProperty -Name "LTIM" -Value "Batch35.2"
$obj | Get-Member

# adding multiple members to the object
$newobject = @{
    prop1 = "value1"
    prop2 = "value2"
    prop3 = "value3"
    prop4 = "value4"
}

$obj2 = New-Object -TypeName psobject -Property $newobject

$obj2 | Get-Member