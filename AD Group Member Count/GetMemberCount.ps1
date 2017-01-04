$groupname=read-host "name of group you would like a count on"
import-module ActiveDirectory
$membercount=Get-ADGroupMember -recursive "$groupname" | Where {$_.ObjectClass -eq "user"} | get-aduser | Where {$_.Enabled -eq $true}
$membercount.count
