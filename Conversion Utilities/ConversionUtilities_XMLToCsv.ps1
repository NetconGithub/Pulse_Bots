# Specify the path to the XML file
$xmlFilePath = "C:\Path\To\Your\File.xml"

# Specify the path for the output CSV file
$outputCsvFilePath = "C:\Path\To\Output\File.csv"

# Load the XML file
$xmlData = xml

# Create a StringBuilder object to store the CSV content
$csvContent = New-Object System.Text.StringBuilder

# Add the CSV header row
$csvContent.AppendLine("Name,Email,Phone,Mobile")

# Get the XML node values and append them to the CSV content
foreach ($node in $xmlData.SelectNodes("//contact")) {
    $name = $node.SelectSingleNode("name").InnerText
    $email = $node.SelectSingleNode("email").InnerText
    $phone = $node.SelectSingleNode("phone").InnerText
    $mobile = $node.SelectSingleNode("mobile").InnerText
    $csvContent.AppendLine("$name,$email,$phone,$mobile")
}

# Save the CSV content to a file
$csvContent.ToString() | Out-File -FilePath $outputCsvFilePath -Encoding UTF8

Write-Host "Data has been extracted and exported to $outputCsvFilePath."
