Get-Content -Path 'F:\00_EPAM\GIT\DevOps_Fundamentals\03 Scripting PowerShell Essentials\Dir_Names.txt' | 

foreach{
$name = "F:\00_EPAM\GIT\DevOps_Fundamentals\03 Scripting PowerShell Essentials\$_" 
New-Item -Path $name -ItemType Directory

$filename = "$name\README.md"
New-Item -Path $filename -ItemType File

$name = "F:\00_EPAM\GIT\DevOps_Fundamentals\03 Scripting PowerShell Essentials\$_\Images"
New-Item -Path $name -ItemType Directory
$name = "F:\00_EPAM\GIT\DevOps_Fundamentals\03 Scripting PowerShell Essentials\$_\Scripts"
New-Item -Path $name -ItemType Directory
}