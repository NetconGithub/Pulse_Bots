Connect-MgGraph -Scopes "User.ReadWrite.All"

# Example: Update a single user's details
Update-MgUser -UserId "<UserPrincipalName>" -Department "Sales" -JobTitle "Manager" -MobilePhone "+1234567890"
