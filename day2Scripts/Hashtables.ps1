# Hashtables - key-value pairs
$ht1 = @{}
$ht1.GetType()

#unordered hashtable
$ht2 = @{Name="Jeetu" ; client = "LTIMindtree" ; Batch = "35.2"}
$ht2

#ordered hashtable
$ht3 = [ordered]@{Name="Jeetu" ; client = "LTIMindtree" ; Batch = "35.2"}
$ht3
$ht3.Keys
$ht3.Values
$ht3.Count

# Adding element to HT
$ht3.Add("ClassRoom","Kachnar")
$ht3

# Modifying element from HT
$ht3["Name"] = "Jitendra Singh Tomar"
$ht3

# Deleting element from HT
$ht3.Remove("Batch")
$ht3

cls
Get-Service | Select-Object Name, `
DisplayName, `
@{name="Report"; exp={$_.Status}} `
-First 3