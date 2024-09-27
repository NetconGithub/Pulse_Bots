#************************** Decommission vm in Azure  ***************************************#

Import-Module -Name Az

#Connecting to Azure
$username1 = 'USERNAME'
$password1 = 'PASSWORD'
$pass1= ConvertTo-SecureString $password1 -AsPlainText -Force
$azure_cred = New-Object System.Management.Automation.PsCredential( $username1, $pass1 )
$username1
$username='Netcon_POC1'
$password = 'Welcome@123'
$pass=$password|ConvertTo-SecureString -AsPlainText -Force
$Cred = New-Object  System.Management.Automation.PsCredential($username,$pass)

$vmName = "VM name"
$resourcegroup="Resource group name" 
$os="Operating system"
$location = "Location of the vm needs to be created"
$vmParams = @{
  ResourceGroupName = '$resourcegroup'
  Name = $vmname
  Location = $location
  ImageName = $os
  PublicIpAddressName = "Public ip name"
  Credential = $cred
  OpenPorts = "port number that needs for VM"
  Size = "Size of vm "
}
$newVM1 = New-AzVM @vmParams
$vmcheck=Get-AzVM -ResourceGroupName $resourcegroup -Name $vmName
$vmcheck.Id

Stop-AzVM -ResourceGroupName $resourcegroup -Name $vmName