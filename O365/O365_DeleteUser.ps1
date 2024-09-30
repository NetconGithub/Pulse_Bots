Connect-MgGraph -Scopes "User.ReadWrite.All"
$userName="<display name>"
# Get the user
$userId = (Get-MgUser -Filter "displayName eq '$userName'").Id
# Remove the user
Remove-MgUser -UserId $userId -Confirm:$false