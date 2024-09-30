# Load the Oracle Data Provider for .NET
Add-Type -Path ".\Oracle.ManagedDataAccess.dll"

# Connection string
$connectionString = "User Id=yourusername;Password=yourpassword;Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=yourhostname)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=yourservicename)))"

# Create a connection
$connection = New-Object Oracle.ManagedDataAccess.Client.OracleConnection($connectionString)
$connection.Open()

# Update Operation
$updateQuery = "UPDATE table SET column_value = value1 WHERE column_condition = 'value2'"
$updateCommand = $connection.CreateCommand()
$updateCommand.CommandText = $updateQuery
$updateCommand.ExecuteNonQuery()


# Close the connection
$connection.Close()
