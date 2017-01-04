# Get Member Count of Security Group

Description <br>
Powershell script to get the member count of a security group that includes all nested groups without displaying duplicate users.<br>

How to Use<br>
Run on a domain controller<br>
The domain controller needs to have the ActiveDirectory Modules included on the server.

Set the execution policy<br>
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```
Run Script<br>
```
GetMemberCount.ps1
Type in the name of the group you would like the count on.
This will now count the users and display a number.

```

Code <br>
GetMemberCount.ps1<br>
````
$groupname=read-host "name of group you would like a count on"
import-module ActiveDirectory
$membercount=Get-ADGroupMember -recursive "$groupname" | Where {$_.ObjectClass -eq "user"} | get-aduser | Where {$_.Enabled -eq $true}
$membercount.count
````



| OS Version  | Verified |
| ------------- | ------------- |
|Windows 10 | NO |
|Windows Server 2012 | Yes |
|Windows Server 2012 R2 | Yes |
|Windows Server 2008 R2 | Yes |
|Windows Server 2008 | Yes |
|Windows Server 2003 | No |
|Windows 8 | No |
|Windows 7 | No |
|Windows Vista | No |
|Windows XP | No |
|Windows 2000 | No |
