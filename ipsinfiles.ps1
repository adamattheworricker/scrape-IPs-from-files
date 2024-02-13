$regex = '\b\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}\b'
Get-ChildItem *.* -Recurse | Select-String -Pattern $regex -AllMatches | % { $_.Matches } | % { $_.Value } | sort | unique | Out-File output.txt
