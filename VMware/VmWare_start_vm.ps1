#************************** Start vm in Azure  ***************************************#

$username1 = 'USERNAME'
$password1 = 'PASSWORD'
$pass1= ConvertTo-SecureString $password1 -AsPlainText -Force
$azure_cred = New-Object System.Management.Automation.PsCredential( $username1, $pass1 )
$connect=Connect-AzAccount -Credential $azure_cred -WarningAction Ignore -Confirm:$false -Tenant "Tenant id" -Subscription "Subscription id"
$vmName = "VM name"
$resourcegroup="Resource group name"
Start-AzVM -Name $vmName -ResourceGroupName $resourcegroup

