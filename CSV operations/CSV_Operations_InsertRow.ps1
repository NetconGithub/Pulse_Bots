# Import the existing CSV file
$csv = Import-Csv -Path "C:\path\to\your\file.csv"

# Create a new row
$newRow = [PSCustomObject]@{
    Column1 = "Value1"
    Column2 = "Value2"
    Column3 = "Value3"
}

# Add the new row to the existing data
$csv += $newRow

# Export the updated data back to the CSV file
$csv | Export-Csv -Path "C:\path\to\your\file.csv" -NoTypeInformation
