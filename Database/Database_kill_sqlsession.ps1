#************** KILL SQL SESSION *******************************#

$SqlServerInstance = "YourSqlServerInstance"  
$DatabaseName = "YourDatabaseName"  
$SqlCommand = "KILL $SessionId;"
try {
    Invoke-Sqlcmd -ServerInstance $SqlServerInstance -Database $DatabaseName -Query $SqlCommand
    Write-Host "Session $SessionId has been terminated successfully."
} catch {
    Write-Host "An error occurred: $_"
}