# Load the Oracle Data Provider for .NET
Add-Type -Path ".\Oracle.ManagedDataAccess.dll"

# Connection string
$connectionString = "User Id=yourusername;Password=yourpassword;Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=yourhostname)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=yourservicename)))"

# Create a connection
$connection = New-Object Oracle.ManagedDataAccess.Client.OracleConnection($connectionString)
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
