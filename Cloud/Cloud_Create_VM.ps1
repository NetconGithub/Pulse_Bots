New-AzResourceGroup -Name "myResourceGroup" -Location "EastUS"

$cred = Get-Credential
New-AzVM -ResourceGroupName "myResourceGroup" -Name "myVM" -Location "EastUS" -VirtualNetworkName "myVnet" -SubnetName "mySubnet" -SecurityGroupName "myNetworkSecurityGroup" -PublicIpAddressName "myPublicIpAddress" -Credential $cred

