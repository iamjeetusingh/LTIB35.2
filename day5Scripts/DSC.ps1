# importing the DSC module to run DSC commands
Import-Module -Name PSDesiredStateConfiguration

# to create PS code for DSC
Configuration my-config {
    Node member1{
        service custom{
            Name = "BITS"
            Ensure = "Present"
        }
        service custom2{
            Name = "WinRM"
            Ensure = "Present"
        }
    }
}

# to generate the MOF file
my-config

# to apply the changes on remote machine(s)
Start-DscConfiguration -Path .\my-config

# to test
Test-DscConfiguration -CimSession member1