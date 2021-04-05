Get-ChildItem -Path $PWD | ?{$_.Name -eq "test.txt"}
Get-ChildItem -Path $PWD | ?{$_.Name.Contains('S')}
Get-ChildItem -Path $PWD | ?{$_.Name.StartsWith('M')}
Get-ChildItem -Path $PWD -Recurse | ?{$_.LastWriteTime -lt (Get-Date).AddDays(-7)}
Get-Process | ?{$_.Name.StartsWith(‘M’)} | ? {$_.ID -gt 1234}