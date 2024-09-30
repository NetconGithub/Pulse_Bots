# Load the IBM Data Server Provider for .NET
Add-Type -Path ".\IBM.Data.DB2.dll"

# Connection string
$connectionString = "Server=yourhostname:50000;Database=yourdbname;UID=yourusername;PWD=yourpassword;"

# Create a connection
$connection = New-Object IBM.Data.DB2.DB2Connection($connectionString)
$connection.Open()

# Delete Operation
$deleteQuery = "DELETE FROM table WHERE column1 = 'value1'"
$deleteCommand = $connection.CreateCommand()
$deleteCommand.CommandText = $deleteQuery
$deleteCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
