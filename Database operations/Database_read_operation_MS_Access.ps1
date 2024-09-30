# Load the necessary .NET assembly
Add-Type -AssemblyName System.Data

# Connection string
$connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Path\To\Your\Database.accdb;"

# Create a connection
$connection = New-Object System.Data.OleDb.OleDbConnection($connectionString)
$connection.Open()

# Read Operation
$readQuery = "SELECT * FROM table"
$readCommand = $connection.CreateCommand()
$readCommand.CommandText = $readQuery
$reader = $readCommand.ExecuteReader()
while ($reader.Read()) {
    Write-Output "Name: $($reader['value1']), Position: $($reader['value2']), Salary: $($reader['value3'])"
}
$reader.Close()

# Close the connection
$connection.Close()
