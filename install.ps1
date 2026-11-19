$link = "https://github.com/draxxlxrd/DraxxCord-Installer/releases/latest/download/DraxxCordInstallerCli.exe"

$outfile = "$env:TEMP\DraxxCordInstallerCli.exe"

Write-Output "Downloading installer to $outfile"

Invoke-WebRequest -Uri "$link" -OutFile "$outfile"

Write-Output ""

Start-Process -Wait -NoNewWindow -FilePath "$outfile"

# Cleanup
Remove-Item -Force "$outfile"
