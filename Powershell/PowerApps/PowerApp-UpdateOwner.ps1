$EnvironmentName = '<envID>'
$AppID = '<appID>'
$NewAppOwner = '<userObjectID>'

Set-AdminPowerAppOwner –AppName $AppID -AppOwner $NewAppOwner –EnvironmentName $EnvironmentName