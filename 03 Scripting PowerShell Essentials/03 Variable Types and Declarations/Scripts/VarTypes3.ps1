clear
gci -af -Path $home -Recurse | Select-Object -First 3 | 
%{Write-Host File path: $_.FullName; Write-Host File type : $_.GetType().Name; Write-Host}