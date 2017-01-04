# Shrink VHD Powershell

Description <br>
Powershell script to shrink the size of a VHD disk.<br>
You will need to add in the Hyper-V Role on your 2012 server for the powershell command to be avaliable.<br>
https://blogs.technet.microsoft.com/gbanin/2013/06/25/how-to-install-hyper-v-on-a-virtual-machine-in-hyper-v/ <br>
You only need the RSAT-Hyper-V-Tools<br>

How to Use<br>
Run on a file share<br>

Set the execution policy<br>
```
Set-ExecutionPolicy -ExecutionPolicy Unrestricted
```
Run Script<br>
```
Example

shrinkdisk.ps1 -path E:\ProfileDisk\testuser\VHD-ProfileDisk\testuser.vhd

Result:
Attempting to Mount E:\ProfileDisk\testuser\VHD-ProfileDisk\testuser.vhd
Attempting to compact E:\ProfileDisk\testuser\VHD-ProfileDisk\testuser.vhd
Attempting to dismount E:\ProfileDisk\testuser\VHD-ProfileDisk\testuser.vhd
```

Code <br>
shrinkdisk.ps1<br>
````
Param([string]$Path = $(Throw ‘-Path is required’)) 
Write-host "Attempting to Mount $Path"
Mount-vhd -path $Path -readonly
Write-host	"Attempting to compact $Path"
Optimize-vhd -path $Path -mode full  
Write-host "Attempting to dismount $Path"
Dismount-vhd -path $Path

````



| OS Version  | Verified |
| ------------- | ------------- |
|Windows 10 | No |
|Windows Server 2012 | Yes |
|Windows Server 2012 R2 | Yes |
|Windows Server 2008 R2 | Yes |
|Windows Server 2008 | No |
|Windows Server 2003 | No |
|Windows 8 | No |
|Windows 7 | No |
|Windows Vista | No |
|Windows XP | No |
|Windows 2000 | No |
