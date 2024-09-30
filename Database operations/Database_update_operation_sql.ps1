
$sql = New-Object data.sqlclient.sqlconnection

$sql.ConnectionString = "Server=DB Name;integrated security=false;initial catalog=PatchAutomation;user id=user_id;password=password"

$sql.Open()

$sqlcmd = $sql.CreateCommand()

$sqlcmd = New-Object system.data.sqlclient.sqlcommand

$sqlcmd.connection = $sql

$query = @"
UPDATE table
SET column1 = value1
WHERE condition1 = 'value_condition1'
"@
;

$sqlcmd.CommandText = $query

$adp = New-Object System.Data.SqlClient.SqlDataAdapter $sqlcmd

$data = New-Object System.Data.DataSet

$adp.Fill($data) | Out-Null

$data.Tables
