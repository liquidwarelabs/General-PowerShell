# Recursive File Delete

Description <br>
Powershell script to delete files with a common name across all folders and subfolders.<br>

How to Use<br>
Run on a file share<br>

Set the execution policy<br>
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```
Run Script<br>
```
RecursiveDelete.ps1
Select the root folder for the files you would like to delete. Example c:\usershare\
Below the that root should be all the user folders by username

Select the file pattern to delete in all the user folders. Example Internet29bd18b
This will now delete all files that start with the name Internet29bd18b in all folders and subfolders.

```

Code <br>
RecursiveDelete.ps1<br>
````
$sharepath=read-host "Path to user fileshare, Example:\\server\share\"
$files=read-host "Starting Name of files Example: Internet29bd18b"
get-childitem $sharepath -include "$files.*" -force -recurse | where-object { (-not $_.PSIsContainer) } | remove-item

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
