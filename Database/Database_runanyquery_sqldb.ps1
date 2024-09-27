#************** RUN ANY SQL QUERY *******************************#

$SqlServerInstance = "YourSqlServerInstance" 
$DatabaseName = "YourDatabaseName"  
$SqlQuery = @"
-- Your SQL query goes here
SELECT * FROM YourTableName;  -- Example query
"@
try {
   # Execute the SQL command
   $result = Invoke-Sqlcmd -ServerInstance $SqlServerInstance -Database $DatabaseName -Query $SqlQuery
   # Output the result
   $result | Format-Table -AutoSize  
} catch {
   Write-Host "An error occurred: $_"
}