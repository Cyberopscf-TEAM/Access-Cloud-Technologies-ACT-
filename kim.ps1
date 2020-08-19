# This script will check the first 30 memory usages and display it in decending order

Write-Host ..............................................
Write-Host             Checking 'Memory Usage'
Write-Host ..............................................

Get-WmiObject WIN32_PROCESS | Sort-Object -Property ws -Descending | Select-Object -first 30 ProcessID,Name,WS
