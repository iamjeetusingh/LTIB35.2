﻿<# 
    Loops
     - while loop
     - do-while loop
     - for loop
     - foreach loop
#>

# While loop
$arr1 = @("a","b","c")
$c = 0
cls
while ( $c -lt $arr1.Length ){
    $arr1[$c]
    $c += 1
    sleep 1
}


# do-while loop
cls
$array = @("item1", "item2", "item3")
$counter = 0;

do {
   $array[$counter]
   $counter += 1
} while($counter -lt $array.length)


# for loop
$arr3 = @(1,2,3,4,5)
cls
for ( $i = 0; $i -lt $arr3.Length; $i++ ){
    Write-Host "Index Value $i is" $arr3[$i]
}


# foreach loop
cls
$arr = @(1..100)
foreach( $a in $arr ){
    Write-Host $a
}