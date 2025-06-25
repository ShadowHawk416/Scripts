Import-Module ActiveDirectory

$DaysInactive = 90
$time = (Get-Date).AddDays(-($DaysInactive))
Get-ADComputer -Filter {LastLogonTimeStamp -lt $time} -Properties Name, OperatingSystem, SamAccountName, DistinguishedName | Select-Object Name, OperatingSystem, SamAccountName, DistinguishedName | export-csv c:\temp\inactivecomputers.csv -NoTypeInformation


$Computers = Import-Csv -LIteralPath C:\temp\inactivecomputers.csv

ForEach ($Computer in $Computers) {
    Get-ADComputer -Identity $Computer.name | Disable-ADAccount  -Confirm:$false
}