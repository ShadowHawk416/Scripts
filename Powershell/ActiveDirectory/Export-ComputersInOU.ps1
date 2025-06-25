Import-Module ActiveDirectory
Get-ADComputer -Filter * -SearchBase "OU=Location,DC=domain,DC=com" | Export-CSV C:\temp\OUComputer.csv