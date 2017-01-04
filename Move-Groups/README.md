# Move-Groups

Description <br>
Powershell script to move members of one group and add them into another group.<br>
Example:<br>
groupmove - selecting group one and adding those members into a another blank security group.<br>
groupremove - Select a group and remove the members from that group from another group.<br>

How to Use<br>
Run on a domain Controller<br>

Set the execution policy<br>
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```
Run Script<br>
```
groupmove.ps1
Select Group 1 source(group with users)
Select Group 2 destination (empty group)
This will then add users specified in group 1 into group 2
OR
groupremove.ps1
Select Group 1 source(group with users)
Select Group 2 destination (Other Group)
This will then remove users specfied in group 1 from group 2

```

Code <br>
groupmove.ps1<br>
````
import-module ActiveDirectory

$Group1 = Read-Host -Prompt 'Input your Source Group name'
$Group2 = Read-Host -Prompt 'Input your destination Group name'

Get-ADGroupMember "$group1" | ForEach-Object {
  Add-ADGroupMember -Identity "$group2" -Members $_
}

````

Code <br>
groupremove.ps1<br>
````
import-module ActiveDirectory

$Group1 = Read-Host -Prompt 'Input your Source Group name'
$Group2 = Read-Host -Prompt 'Input your destination Group name'

Get-ADGroupMember "$group1" | ForEach-Object {
  Remove-ADGroupMember -Identity "$group2" -Members $_  -Confirm:$false
}

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
