Import-Module Import-Excel
# Load the JSON file
$file = Import-Excel -Path "path\to\your\input.xlsx" -WorksheetName "Sheet1"

$file | Export-Csv -Path "path\to\your\output.csv" 
