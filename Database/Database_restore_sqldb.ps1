#************** Restore SQL SERVER *******************************#
Import-Module -name SQLServer
$serverName = "YourSqlServerInstance"  
$databaseName = "YourDatabaseName"
$backupFilePath = "path to your backup.bak"
# Restore Database Command
$restoreCommand = @"
RESTORE DATABASE [$databaseName]
FROM DISK = N'$backupFilePath'
WITH REPLACE, RECOVERY;
"@
# Execute the command
Invoke-Sqlcmd -ServerInstance $serverName -Query $restoreCommand
Write-Host "Database $databaseName restored successfully from $backupFilePath"