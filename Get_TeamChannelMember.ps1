Install-Module -Name PowerShellGet -Force -AllowClobber
Install-Module -Name Teams -Force -AllowClobber


Connect-MicrosoftTeams

$TeamName = "Team Name"
$ChannelName = "Channel Name"

$Team = Get-Team -DisplayName $TeamName 
$TeamId = $Team.GroupId
$Members = Get-TeamChannelUser -GroupId $TeamId  -DisplayName $ChannelName
$Members | Export-Csv -Path "$ChannelName+.csv" -NoTypeInformation
