Start-Process "$env:TEMP\H\GooseDesktop.exe" -WorkingDirectory "$env:TEMP\H"
iwr -Uri "https://github.com/J-Reboia/TheFunHouse/raw/refs/heads/main/Misc/Desktop_Goose_v0.21.zip" -OutFile "$env:TEMP\H.zip";
Expand-Archive "$env:TEMP\H.zip" -Dest "$env:TEMP\H" -Force;
(New-Object -ComObject Shell.Application).ShellExecute("$env:TEMP\H\GooseDesktop.exe");