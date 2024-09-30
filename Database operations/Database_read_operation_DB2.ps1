# Load the IBM Data Server Provider for .NET
Add-Type -Path ".\IBM.Data.DB2.dll"

# Connection string
$connectionString = "Server=yourhostname:50000;Database=yourdbname;UID=yourusername;PWD=yourpassword;"

# Create a connection
$connection = New-Object IBM.Data.DB2.DB2Connection($connectionString)
$connection.Open()

# Read Operation
$readQuery = "SELECT * FROM table"
$readCommand = $connection.CreateCommand()
$readCommand.CommandText = $readQuery
$reader = $readCommand.ExecuteReader()
while ($reader.Read()) {
    Write-Output "Name: $($reader['value1']), Position: $($reader['value 2']), column name: $($reader['value3'])"
}
$reader.Close()

# Close the connection
$connection.Close()
