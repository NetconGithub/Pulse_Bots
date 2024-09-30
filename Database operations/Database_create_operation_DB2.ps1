# Load the IBM Data Server Provider for .NET
Add-Type -Path ".\IBM.Data.DB2.dll"

# Connection string
$connectionString = "Server=yourhostname:50000;Database=yourdbname;UID=yourusername;PWD=yourpassword;"

# Create a connection
$connection = New-Object IBM.Data.DB2.DB2Connection($connectionString)
$connection.Open()

# Create Operation
$createQuery = "INSERT INTO table (column1, column2, column3) VALUES ('value1', 'value2', value3)"
$createCommand = $connection.CreateCommand()
$createCommand.CommandText = $createQuery
$createCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
