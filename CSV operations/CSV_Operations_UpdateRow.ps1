# Import the CSV file
$csv = Import-Csv -Path "C:\path\to\your\file.csv"

# Update the rows
foreach ($row in $csv) {
    if ($row.Status -eq "Pending") {
        $row.Status = "Completed"
    }
}

# Export the updated CSV
$csv | Export-Csv -Path "C:\path\to\your\file.csv" -NoTypeInformation
