function db_update{
              $mysql_server = "localhost"
              $mysql_user = "Pass the usernameusername"
              $mysql_password = "Pass the password"
              $dbName = "Schema_name"
              [void][system.reflection.Assembly]::LoadFrom("C:\Program Files (x86)\MySQL\MySQL Installer for Windows\MySql.Data.dll")
              $Connection = New-Object -TypeName MySql.Data.MySqlClient.MySqlConnection
              $Connection.ConnectionString = "SERVER=$mysql_server;DATABASE=$dbName;UID=$mysql_user;PWD=$mysql_password"
              $Connection.Open()
              $output_path = "C:\temp\mysql_output.csv"
              $sql = New-Object MySql.Data.MySqlClient.MySqlCommand
              $sql.Connection = $Connection
              $sql.CommandText = "UPDATE vm_schema.vm_table SET `wCoulumnname`=$num1;"
              $dataAdapter = New-Object MySql.Data.MySqlClient.MySqlDataAdapter($sql)
              $dataSet = New-Object System.Data.DataSet
              $dataAdapter.Fill($dataSet) | Out-Null
              $dataSet.Tables[0]
              #$dataSet.Tables[0] | Export-Csv -path $output_path -NoTypeInformation
              $Connection.Close()
              }