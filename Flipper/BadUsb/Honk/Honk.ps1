$d = "$env:TEMP\H"
if (!(Test-Path $d)) { New-Item -ItemType Directory -Path $d -Force }
iwr "https://github.com/J-Reboia/TheFunHouse/raw/refs/heads/main/Misc/Desktop_Goose_v0.21.zip" -OutFile "$env:TEMP\H.zip"
Expand-Archive "$env:TEMP\H.zip" -Dest $d -Force
Start-Process "$d\GooseDesktop.exe" -WorkingDirectory $d