# Load the necessary .NET assembly
Add-Type -AssemblyName System.Data

# Connection string
$connectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=Path\To\Your\Database.accdb;"

# Create a connection
$connection = New-Object System.Data.OleDb.OleDbConnection($connectionString)
$connection.Open()

# Create Operation
$createQuery = "INSERT INTO table (column1, column2, column3) VALUES ('value1', 'value2', value3)"
$createCommand = $connection.CreateCommand()
$createCommand.CommandText = $createQuery
$createCommand.ExecuteNonQuery()

# Close the connection
$connection.Close()
