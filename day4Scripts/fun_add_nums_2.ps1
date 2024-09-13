function add1{
[cmdletbinding()]
    param(
        [int][parameter(Mandatory=$true,HelpMessage="Enter a number")]$n1,
        [int][parameter(Mandatory=$true,HelpMessage="Enter a number")]$n2
    )

    Write-Host "$n1 + $n2 = $($n1+$n2)"

}
cls

# add1 -n1 20 -n2 40
add1 -n1 20 