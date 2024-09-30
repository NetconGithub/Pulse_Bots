# Load the IBM Data Server Provider for .NET
Add-Type -Path ".\IBM.Data.DB2.dll"

# Connection string
$connectionString = "Server=yourhostname:50000;Database=yourdbname;UID=yourusername;PWD=yourpassword;"

# Create a connection
$connection = New-Object IBM.Data.DB2.DB2Connection($connectionString)
$connection.Open()

# Update Operation
$updateQuery = "UPDATE table SET column = column value WHERE conditon1 = 'value1'"
$updateCommand = $connection.CreateCommand()
$updateCommand.CommandText = $updateQuery
$updateCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
