# task create a function that asks user to enter 2 number and show them
# the total of those numbers

function add{

    [int]$num1 = Read-Host "Enter 1st number"
    [int]$num2 = Read-Host "ENter 2nd number"

    # $num1.GetType()
    # $num2.GetType()

    $num3 = $num1 + $num2

    Write-Host "Total of $num1 & $num2 is $num3"

    $num1 = $null
    $num2 = $null 
    $num3 =  $null

}
cls
add

