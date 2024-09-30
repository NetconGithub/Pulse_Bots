Import-Module Microsoft.Graph
$NewPassword = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$NewPassword.Password = "!NewPassword2022!"
$NewPassword.ForceChangePasswordNextLogin = $True

New-MgUser -UserPrincipalName "CalebS@contoso.onmicrosoft.com" -DisplayName "Caleb Sills" -PasswordProfile $NewPassword