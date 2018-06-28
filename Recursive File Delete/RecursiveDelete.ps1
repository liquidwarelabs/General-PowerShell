$sharepath=read-host "Path to user fileshare, Example:\\server\share\"
$files=read-host "Starting Name of files Example: Internet29bd18b"
get-childitem $sharepath -include "$files.*" -force -recurse | where-object { (-not $_.PSIsContainer) } | remove-item