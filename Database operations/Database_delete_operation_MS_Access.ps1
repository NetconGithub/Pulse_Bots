# Load the necessary .NET assembly
Add-Type -AssemblyName System.Data

# Connection string
$connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Path\To\Your\Database.accdb;"

# Create a connection
$connection = New-Object System.Data.OleDb.OleDbConnection($connectionString)
$connection.Open()

# Delete Operation
$deleteQuery = "DELETE FROM Employees WHERE Name = 'John Doe'"
$deleteCommand = $connection.CreateCommand()
$deleteCommand.CommandText = $deleteQuery
$deleteCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
