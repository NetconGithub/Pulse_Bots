# Load the XML file
[xml]$xml = Get-Content -Path "path\to\your\file.xml"

# Convert the XML to JSON
$json = $xml | ConvertTo-Json -Depth 3

# Save the JSON to a file
$json | Set-Content -Path "path\to\your\file.json"
