$ErrorActionPreference = "Stop"

choco install -force -y python3
$pythonPath = "C:\Python37"
$pythonScriptPath = "C:\Python37\Scripts"
$env:PATH += ";$pythonPath;$pythonScriptPath"
$userPath = (Get-ItemProperty "Registry::HKEY_CURRENT_USER\Environment").PATH
Set-ItemProperty -Path "Registry::HKEY_CURRENT_USER\Environment" -Name PATH -Value "$userPath;$pythonPath;$pythonScriptPath"
python -m pip install -U pip