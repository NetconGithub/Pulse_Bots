$csv1 = Import-Csv -Path "C:\Path\to\your\firstfile.csv"
$csv2 = Import-Csv -Path "C:\Path\to\your\secondfile.csv"

$comparison = Compare-Object -ReferenceObject $csv1 -DifferenceObject $csv2 -Property ColumnName

$comparison | ForEach-Object {
    if ($_.SideIndicator -eq "<=") {
        Write-Output "Only in first file: $($_.ColumnName)"
    } elseif ($_.SideIndicator -eq "=>") {
        Write-Output "Only in second file: $($_.ColumnName)"
    }
}
