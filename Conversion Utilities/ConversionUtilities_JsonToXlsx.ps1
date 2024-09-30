Import-Module Import-Excel
# Load the JSON file
$json = Get-Content -Path "path\to\your\file.json" | ConvertFrom-Json

# Convert JSON to Excel
$json | Export-Excel -Path "path\to\your\output.xlsx" -WorksheetName "Sheet1"
