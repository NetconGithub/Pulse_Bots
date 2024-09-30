# Load the XML file
$JsonObject = Get-Content -Path "path\to\your\file.json" | ConvertFrom-Json

$XML = ConvertTo-Xml -As Stream -InputObject $JsonObject -Depth 3
