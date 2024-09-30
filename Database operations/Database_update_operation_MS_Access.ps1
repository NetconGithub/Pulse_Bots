# Load the necessary .NET assembly
Add-Type -AssemblyName System.Data

# Connection string
$connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Path\To\Your\Database.accdb;"

# Create a connection
$connection = New-Object System.Data.OleDb.OleDbConnection($connectionString)
$connection.Open()

# Update Operation
$updateQuery = "UPDATE table SET column1 = value1 WHERE column2 = 'value2'"
$updateCommand = $connection.CreateCommand()
$updateCommand.CommandText = $updateQuery
$updateCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
