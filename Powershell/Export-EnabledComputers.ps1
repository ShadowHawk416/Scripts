Import-Module ActiveDirectory

Get-ADComputer -filter "Enabled -eq 'True'" -Properties * | Export-Csv c:\temp\EnabledComptuers.csv
