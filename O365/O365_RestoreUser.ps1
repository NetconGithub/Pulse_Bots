Import-Module Microsoft.Graph
# Connect to your tenant
Connect-MgGraph -Scopes Directory.ReadWrite.All

$DeletedUsers = Get-MgDirectoryDeletedItem -DirectoryObjectId microsoft.graph.user -Property '*'
$DeletedUsers = $DeletedUsers.AdditionalProperties['value']
foreach ($deletedUser in $DeletedUsers)
{
   $deletedUser | Format-Table
}

# Input user account ID
$userId = "<id>"
# Restore the user
Restore-MgDirectoryDeletedItem -DirectoryObjectId $userId