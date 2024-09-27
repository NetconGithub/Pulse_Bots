#Salesforce access management
Install-Module SalesforceCmdlets
#Connect to salesforce
$salesforce = Connect-Salesforce  -User "$User" -Password "$Password" -SecurityToken "$SecurityToken"
$connectionstring = 'DSN=MyODBCDataSource'
$sql = 'select top 1 * from account'
$connection = New-Object System.Data.Odbc.OdbcConnection($connectionstring)
$connection.open()
$command = New-Object system.Data.Odbc.OdbcCommand($sql,$connection)
$adapter = New-Object system.Data.Odbc.OdbcDataAdapter($command)
$table = New-Object system.Data.datatable
$adapter.fill($table)
1
$connection.close()
$table
