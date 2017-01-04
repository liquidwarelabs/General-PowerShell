Param([string]$Path = $(Throw ‘-Path is required’)) 
Write-host "Attempting to Mount $Path"
Mount-vhd -path $Path -readonly
Write-host	"Attempting to compact $Path"
Optimize-vhd -path $Path -mode full  
Write-host "Attempting to dismount $Path"
Dismount-vhd -path $Path