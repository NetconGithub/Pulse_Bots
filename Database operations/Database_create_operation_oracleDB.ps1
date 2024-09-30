# Load the Oracle Data Provider for .NET
Add-Type -Path ".\Oracle.ManagedDataAccess.dll"

# Connection string
$connectionString = "User Id=yourusername;Password=yourpassword;Data Source=(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(HOST=yourhostname)(PORT=1521))(CONNECT_DATA=(SERVICE_NAME=yourservicename)))"

# Create a connection
$connection = New-Object Oracle.ManagedDataAccess.Client.OracleConnection($connectionString)
$connection.Open()

# Create Operation
$createQuery = "INSERT INTO Employees (column1, column2, column3) VALUES ('value1', 'value2', value3)"
$createCommand = $connection.CreateCommand()
$createCommand.CommandText = $createQuery
$createCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
