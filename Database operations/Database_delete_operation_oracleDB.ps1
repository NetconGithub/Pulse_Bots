# Load the Oracle Data Provider for .NET
Add-Type -Path ".\Oracle.ManagedDataAccess.dll"

# Connection string
$connectionString = "User Id=yourusername;Password=yourpassword;Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=yourhostname)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=yourservicename)))"

# Create a connection
$connection = New-Object Oracle.ManagedDataAccess.Client.OracleConnection($connectionString)
$connection.Open()

# Delete Operation
$deleteQuery = "DELETE FROM table WHERE column1 = 'value1'"
$deleteCommand = $connection.CreateCommand()
$deleteCommand.CommandText = $deleteQuery
$deleteCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
