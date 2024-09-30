Import-Module Pnp.Powershell
$username = 'netdevopsid@netcon.in'
$password = 'password'
$pass= ConvertTo-SecureString $password -AsPlainText -Force

$credential = New-Object System.Management.Automation.PsCredential( $username, $pass )
$siteUrl = "https://contoso.sharepoint.com/sites/Contoso"
$groupName = "Team Site Members"
$userEmail = "john.doe@contoso.com"
Connect-PnPOnline -Url https://contoso-admin.sharepoint.com -Credential $credential
Remove-PnPTenantSite -Url "https://tenant.sharepoint.com/sites/contoso" -Force -SkipRecycleBin
Disconnect-PnPOnline
