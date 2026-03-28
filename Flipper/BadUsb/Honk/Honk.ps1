# 1. Define Paths
$url = "https://github.com/J-Reboia/TheFunHouse/raw/refs/heads/main/Misc/Desktop_Goose_v0.21.zip"
$zip = "$env:TEMP\H.zip"
$dir = "$env:TEMP\H"

# 2. Download and Extract
iwr -Uri $url -OutFile $zip
Expand-Archive $zip -Dest $dir -Force

# 3. Run (This searches for the EXE in case it's inside a subfolder)
$exe = Get-ChildItem -Path $dir -Filter "GooseDesktop.exe" -Recurse | Select-Object -First 1
if ($exe) {
    Start-Process $exe.FullName -WorkingDirectory $exe.DirectoryName
}