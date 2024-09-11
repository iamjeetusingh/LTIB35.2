<# 
    Data Structures
     - Variables
     - Arrays
     - Hashtables
#>
cls
# Variables
$a = 10
$a.GetType()

$b = 10.10
$b.GetType()

$c = "Hello"
$c.GetType()

$d = Get-Date
$d.GetType()
$d.Date
$d.Day
$d.DayOfWeek
$d.DayOfYear
$d.Minute
$d.Second

(Get-Date).DayOfWeek