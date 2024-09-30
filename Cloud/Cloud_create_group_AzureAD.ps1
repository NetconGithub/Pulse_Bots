$username1 = ''
$password1 = ''
$pass1= ConvertTo-SecureString $password1 -AsPlainText -Force
$azure_cred = New-Object System.Management.Automation.PsCredential( $username1, $pass1 )
$connect= Connect-AzureAD -Credential $azure_cred -WarningAction Ignore -Confirm:$false -Tenant "" 

$Groups = Import-Csv -Path C:\Temp\AzureAD_Groups.csv

 
foreach($Group in $Groups)

{

New-AzureADMSGroup -DisplayName $Group.DisplayName -Description $Group.Description -MailEnabled $False -MailNickName "group" -SecurityEnabled $True

} 