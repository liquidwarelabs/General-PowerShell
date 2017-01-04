import-module ActiveDirectory

$Group1 = Read-Host -Prompt 'Input your Source Group name'
$Group2 = Read-Host -Prompt 'Input your destination Group name'

Get-ADGroupMember "$group1" | ForEach-Object {
  Add-ADGroupMember -Identity "$group2" -Members $_
}