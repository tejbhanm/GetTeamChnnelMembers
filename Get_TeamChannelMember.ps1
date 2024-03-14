Install-Module -Name PowerShellGet -Force -AllowClobber
Install-Module -Name Teams -Force -AllowClobber


Connect-MicrosoftTeams

$TeamName = "Weir - WBS Transition 2023/2024"
$ChannelName = "1 - Wave ONE"

$Team = Get-Team -DisplayName $TeamName 
$TeamId = $Team.GroupId
$Members = Get-TeamChannelUser -GroupId $TeamId  -DisplayName $ChannelName
$Members | Export-Csv -Path "ChannelMembers.csv" -NoTypeInformation
