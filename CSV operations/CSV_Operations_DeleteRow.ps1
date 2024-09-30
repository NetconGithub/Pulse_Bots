$csv = Import-Csv "C:\path\to\your\file.csv"
$filteredCsv = $csv | Where-Object { $_.Name -ne "Jones" }
$filteredCsv | Export-Csv "C:\path\to\your\filtered_file.csv" -NoTypeInformation
